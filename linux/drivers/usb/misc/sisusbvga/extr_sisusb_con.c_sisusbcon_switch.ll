; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_switch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/sisusbvga/extr_sisusb_con.c_sisusbcon_switch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i64, i64, i64, i32 }
%struct.sisusb_usb_data = type { i64, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [29 x i8] c"ASSERT ORIGIN != SCREENBUF!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vc_data*)* @sisusbcon_switch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sisusbcon_switch(%struct.vc_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.vc_data*, align 8
  %4 = alloca %struct.sisusb_usb_data*, align 8
  %5 = alloca i32, align 4
  store %struct.vc_data* %0, %struct.vc_data** %3, align 8
  %6 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %7 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %6, i32 0, i32 3
  %8 = load i32, i32* %7, align 8
  %9 = call %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32 %8)
  store %struct.sisusb_usb_data* %9, %struct.sisusb_usb_data** %4, align 8
  %10 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %11 = icmp ne %struct.sisusb_usb_data* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %80

13:                                               ; preds = %1
  %14 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %15 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %16 = call i64 @sisusb_is_inactive(%struct.vc_data* %14, %struct.sisusb_usb_data* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %22

18:                                               ; preds = %13
  %19 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %20 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %19, i32 0, i32 2
  %21 = call i32 @mutex_unlock(i32* %20)
  store i32 0, i32* %2, align 4
  br label %80

22:                                               ; preds = %13
  %23 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %24 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %27 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp eq i64 %25, %28
  br i1 %29, label %30, label %39

30:                                               ; preds = %22
  %31 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %32 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %31, i32 0, i32 2
  %33 = call i32 @mutex_unlock(i32* %32)
  %34 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %35 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %34, i32 0, i32 3
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = call i32 @dev_dbg(i32* %37, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %80

39:                                               ; preds = %22
  %40 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %41 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %40, i32 0, i32 2
  %42 = load i64, i64* %41, align 8
  %43 = trunc i64 %42 to i32
  %44 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %45 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %48 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = add i64 %46, %49
  %51 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %52 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = sub i64 %50, %53
  %55 = trunc i64 %54 to i32
  %56 = call i32 @min(i32 %43, i32 %55)
  store i32 %56, i32* %5, align 4
  %57 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %58 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = inttoptr i64 %59 to i32*
  %61 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %62 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = inttoptr i64 %63 to i32*
  %65 = load i32, i32* %5, align 4
  %66 = call i32 @memcpy(i32* %60, i32* %64, i32 %65)
  %67 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %68 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %69 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %73 = load %struct.vc_data*, %struct.vc_data** %3, align 8
  %74 = call i32 @sisusb_haddr(%struct.sisusb_usb_data* %72, %struct.vc_data* %73, i32 0, i32 0)
  %75 = load i32, i32* %5, align 4
  %76 = call i32 @sisusb_copy_memory(%struct.sisusb_usb_data* %67, i8* %71, i32 %74, i32 %75)
  %77 = load %struct.sisusb_usb_data*, %struct.sisusb_usb_data** %4, align 8
  %78 = getelementptr inbounds %struct.sisusb_usb_data, %struct.sisusb_usb_data* %77, i32 0, i32 2
  %79 = call i32 @mutex_unlock(i32* %78)
  store i32 0, i32* %2, align 4
  br label %80

80:                                               ; preds = %39, %30, %18, %12
  %81 = load i32, i32* %2, align 4
  ret i32 %81
}

declare dso_local %struct.sisusb_usb_data* @sisusb_get_sisusb_lock_and_check(i32) #1

declare dso_local i64 @sisusb_is_inactive(%struct.vc_data*, %struct.sisusb_usb_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @sisusb_copy_memory(%struct.sisusb_usb_data*, i8*, i32, i32) #1

declare dso_local i32 @sisusb_haddr(%struct.sisusb_usb_data*, %struct.vc_data*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
