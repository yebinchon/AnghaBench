; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_deinit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_deinit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64 }
%struct.sisusb_usb_data = type { i32, i32, i32*, i64* }

@mysisusbs = common dso_local global i32** null, align 8
@MAX_NR_CONSOLES = common dso_local global i32 0, align 4
@sisusb_delete = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @sisusbcon_deinit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sisusbcon_deinit(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  %3 = alloca %struct.sisusb_usb_data*, align 8
  %4 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %5 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %6 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = call %struct.sisusb_usb_data* @sisusb_get_sisusb(i64 %7)
  store %struct.sisusb_usb_data* %8, %struct.sisusb_usb_data** %3, align 8
  %9 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %10 = icmp ne %struct.sisusb_usb_data* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %72

12:                                               ; preds = %1
  %13 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %14 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %13, i32 0, i32 1
  %15 = call i32 @mutex_lock(i32* %14)
  %16 = load i32**, i32*** @mysisusbs, align 8
  %17 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %18 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = getelementptr inbounds i32*, i32** %16, i64 %19
  store i32* null, i32** %20, align 8
  %21 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %22 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %21, i32 0, i32 3
  %23 = load i64*, i64** %22, align 8
  %24 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %25 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = getelementptr inbounds i64, i64* %23, i64 %26
  store i64 0, i64* %27, align 8
  %28 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %29 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %64

32:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %49, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %52

37:                                               ; preds = %33
  %38 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %39 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %38, i32 0, i32 3
  %40 = load i64*, i64** %39, align 8
  %41 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %42 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = getelementptr inbounds i64, i64* %40, i64 %43
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %37
  br label %52

48:                                               ; preds = %37
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %4, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %4, align 4
  br label %33

52:                                               ; preds = %47, %33
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @MAX_NR_CONSOLES, align 4
  %55 = icmp eq i32 %53, %54
  br i1 %55, label %56, label %63

56:                                               ; preds = %52
  %57 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %58 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %57, i32 0, i32 2
  %59 = load i32*, i32** %58, align 8
  %60 = call i32 @vfree(i32* %59)
  %61 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %62 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %61, i32 0, i32 2
  store i32* null, i32** %62, align 8
  br label %63

63:                                               ; preds = %56, %52
  br label %64

64:                                               ; preds = %63, %12
  %65 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %66 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %65, i32 0, i32 1
  %67 = call i32 @mutex_unlock(i32* %66)
  %68 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %3, align 8
  %69 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %68, i32 0, i32 0
  %70 = load i32, i32* @sisusb_delete, align 4
  %71 = call i32 @kref_put(i32* %69, i32 %70)
  br label %72

72:                                               ; preds = %64, %11
  ret void
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb(i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @vfree(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
