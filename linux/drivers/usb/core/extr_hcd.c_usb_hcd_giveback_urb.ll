; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_giveback_urb.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/core/extr_hcd.c_usb_hcd_giveback_urb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_hcd = type { %struct.giveback_urb_bh, %struct.giveback_urb_bh }
%struct.giveback_urb_bh = type { i32, i32, i32, i32 }
%struct.urb = type { i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_hcd_giveback_urb(%struct.usb_hcd* %0, %struct.urb* %1, i32 %2) #0 {
  %4 = alloca %struct.usb_hcd*, align 8
  %5 = alloca %struct.urb*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.giveback_urb_bh*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_hcd* %0, %struct.usb_hcd** %4, align 8
  store %struct.urb* %1, %struct.urb** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load %struct.urb*, %struct.urb** %5, align 8
  %11 = getelementptr inbounds %struct.urb, %struct.urb* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = icmp ne i32 %12, 0
  %14 = xor i1 %13, true
  %15 = zext i1 %14 to i32
  %16 = call i64 @likely(i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %3
  %19 = load i32, i32* %6, align 4
  %20 = load %struct.urb*, %struct.urb** %5, align 8
  %21 = getelementptr inbounds %struct.urb, %struct.urb* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  br label %22

22:                                               ; preds = %18, %3
  %23 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %24 = call i32 @hcd_giveback_urb_in_bh(%struct.usb_hcd* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %35, label %26

26:                                               ; preds = %22
  %27 = load %struct.urb*, %struct.urb** %5, align 8
  %28 = getelementptr inbounds %struct.urb, %struct.urb* %27, i32 0, i32 3
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @is_root_hub(i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %35, label %32

32:                                               ; preds = %26
  %33 = load %struct.urb*, %struct.urb** %5, align 8
  %34 = call i32 @__usb_hcd_giveback_urb(%struct.urb* %33)
  br label %83

35:                                               ; preds = %26, %22
  %36 = load %struct.urb*, %struct.urb** %5, align 8
  %37 = getelementptr inbounds %struct.urb, %struct.urb* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @usb_pipeisoc(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %47, label %41

41:                                               ; preds = %35
  %42 = load %struct.urb*, %struct.urb** %5, align 8
  %43 = getelementptr inbounds %struct.urb, %struct.urb* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @usb_pipeint(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41, %35
  %48 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %49 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %48, i32 0, i32 1
  store %struct.giveback_urb_bh* %49, %struct.giveback_urb_bh** %7, align 8
  store i32 1, i32* %9, align 4
  br label %53

50:                                               ; preds = %41
  %51 = load %struct.usb_hcd*, %struct.usb_hcd** %4, align 8
  %52 = getelementptr inbounds %struct.usb_hcd, %struct.usb_hcd* %51, i32 0, i32 0
  store %struct.giveback_urb_bh* %52, %struct.giveback_urb_bh** %7, align 8
  store i32 0, i32* %9, align 4
  br label %53

53:                                               ; preds = %50, %47
  %54 = load %struct.giveback_urb_bh*, %struct.giveback_urb_bh** %7, align 8
  %55 = getelementptr inbounds %struct.giveback_urb_bh, %struct.giveback_urb_bh* %54, i32 0, i32 2
  %56 = call i32 @spin_lock(i32* %55)
  %57 = load %struct.urb*, %struct.urb** %5, align 8
  %58 = getelementptr inbounds %struct.urb, %struct.urb* %57, i32 0, i32 1
  %59 = load %struct.giveback_urb_bh*, %struct.giveback_urb_bh** %7, align 8
  %60 = getelementptr inbounds %struct.giveback_urb_bh, %struct.giveback_urb_bh* %59, i32 0, i32 3
  %61 = call i32 @list_add_tail(i32* %58, i32* %60)
  %62 = load %struct.giveback_urb_bh*, %struct.giveback_urb_bh** %7, align 8
  %63 = getelementptr inbounds %struct.giveback_urb_bh, %struct.giveback_urb_bh* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %8, align 4
  %65 = load %struct.giveback_urb_bh*, %struct.giveback_urb_bh** %7, align 8
  %66 = getelementptr inbounds %struct.giveback_urb_bh, %struct.giveback_urb_bh* %65, i32 0, i32 2
  %67 = call i32 @spin_unlock(i32* %66)
  %68 = load i32, i32* %8, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %53
  br label %83

71:                                               ; preds = %53
  %72 = load i32, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %71
  %75 = load %struct.giveback_urb_bh*, %struct.giveback_urb_bh** %7, align 8
  %76 = getelementptr inbounds %struct.giveback_urb_bh, %struct.giveback_urb_bh* %75, i32 0, i32 1
  %77 = call i32 @tasklet_hi_schedule(i32* %76)
  br label %82

78:                                               ; preds = %71
  %79 = load %struct.giveback_urb_bh*, %struct.giveback_urb_bh** %7, align 8
  %80 = getelementptr inbounds %struct.giveback_urb_bh, %struct.giveback_urb_bh* %79, i32 0, i32 1
  %81 = call i32 @tasklet_schedule(i32* %80)
  br label %82

82:                                               ; preds = %78, %74
  br label %83

83:                                               ; preds = %32, %82, %70
  ret void
}

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @hcd_giveback_urb_in_bh(%struct.usb_hcd*) #1

declare dso_local i32 @is_root_hub(i32) #1

declare dso_local i32 @__usb_hcd_giveback_urb(%struct.urb*) #1

declare dso_local i64 @usb_pipeisoc(i32) #1

declare dso_local i64 @usb_pipeint(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @tasklet_hi_schedule(i32*) #1

declare dso_local i32 @tasklet_schedule(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
