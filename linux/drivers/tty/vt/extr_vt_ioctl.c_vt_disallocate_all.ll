; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_vt_disallocate_all.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt_ioctl.c_vt_disallocate_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32 }

@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@MIN_NR_CONSOLES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @vt_disallocate_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vt_disallocate_all() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i32, align 4
  %4 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %5 = zext i32 %4 to i64
  %6 = call i8* @llvm.stacksave()
  store i8* %6, i8** %1, align 8
  %7 = alloca %struct.vc_data*, i64 %5, align 16
  store i64 %5, i64* %2, align 8
  %8 = call i32 (...) @console_lock()
  store i32 1, i32* %3, align 4
  br label %9

9:                                                ; preds = %28, %0
  %10 = load i32, i32* %3, align 4
  %11 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %12 = icmp slt i32 %10, %11
  br i1 %12, label %13, label %31

13:                                               ; preds = %9
  %14 = load i32, i32* %3, align 4
  %15 = call i32 @VT_BUSY(i32 %14)
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %13
  %18 = load i32, i32* %3, align 4
  %19 = call %struct.vc_data* @vc_deallocate(i32 %18)
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.vc_data*, %struct.vc_data** %7, i64 %21
  store %struct.vc_data* %19, %struct.vc_data** %22, align 8
  br label %27

23:                                               ; preds = %13
  %24 = load i32, i32* %3, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.vc_data*, %struct.vc_data** %7, i64 %25
  store %struct.vc_data* null, %struct.vc_data** %26, align 8
  br label %27

27:                                               ; preds = %23, %17
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %3, align 4
  %30 = add nsw i32 %29, 1
  store i32 %30, i32* %3, align 4
  br label %9

31:                                               ; preds = %9
  %32 = call i32 (...) @console_unlock()
  store i32 1, i32* %3, align 4
  br label %33

33:                                               ; preds = %60, %31
  %34 = load i32, i32* %3, align 4
  %35 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %63

37:                                               ; preds = %33
  %38 = load i32, i32* %3, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.vc_data*, %struct.vc_data** %7, i64 %39
  %41 = load %struct.vc_data*, %struct.vc_data** %40, align 8
  %42 = icmp ne %struct.vc_data* %41, null
  br i1 %42, label %43, label %59

43:                                               ; preds = %37
  %44 = load i32, i32* %3, align 4
  %45 = load i32, i32* @MIN_NR_CONSOLES, align 4
  %46 = icmp sge i32 %44, %45
  br i1 %46, label %47, label %59

47:                                               ; preds = %43
  %48 = load i32, i32* %3, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.vc_data*, %struct.vc_data** %7, i64 %49
  %51 = load %struct.vc_data*, %struct.vc_data** %50, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 0
  %53 = call i32 @tty_port_destroy(i32* %52)
  %54 = load i32, i32* %3, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.vc_data*, %struct.vc_data** %7, i64 %55
  %57 = load %struct.vc_data*, %struct.vc_data** %56, align 8
  %58 = call i32 @kfree(%struct.vc_data* %57)
  br label %59

59:                                               ; preds = %47, %43, %37
  br label %60

60:                                               ; preds = %59
  %61 = load i32, i32* %3, align 4
  %62 = add nsw i32 %61, 1
  store i32 %62, i32* %3, align 4
  br label %33

63:                                               ; preds = %33
  %64 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %64)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @console_lock(...) #2

declare dso_local i32 @VT_BUSY(i32) #2

declare dso_local %struct.vc_data* @vc_deallocate(i32) #2

declare dso_local i32 @console_unlock(...) #2

declare dso_local i32 @tty_port_destroy(i32*) #2

declare dso_local i32 @kfree(%struct.vc_data*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
