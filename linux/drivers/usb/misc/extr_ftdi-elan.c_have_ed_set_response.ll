; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_have_ed_set_response.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/misc/extr_ftdi-elan.c_have_ed_set_response.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_ftdi = type { i8*, i32, i32, i64, i32 }
%struct.u132_target = type { i32, i32, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.usb_ftdi*, %struct.u132_target*, i32, i32, i32, i8*)* @have_ed_set_response to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @have_ed_set_response(%struct.usb_ftdi* %0, %struct.u132_target* %1, i32 %2, i32 %3, i32 %4, i8* %5) #0 {
  %7 = alloca i8*, align 8
  %8 = alloca %struct.usb_ftdi*, align 8
  %9 = alloca %struct.u132_target*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  store %struct.usb_ftdi* %0, %struct.usb_ftdi** %8, align 8
  store %struct.u132_target* %1, %struct.u132_target** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  %15 = load i32, i32* %10, align 4
  %16 = ashr i32 %15, 0
  %17 = and i32 %16, 2047
  store i32 %17, i32* %14, align 4
  %18 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %19 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %18, i32 0, i32 4
  %20 = call i32 @mutex_lock(i32* %19)
  %21 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %22 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %21, i32 0, i32 3
  store i64 0, i64* %22, align 8
  %23 = load i32, i32* %10, align 4
  %24 = ashr i32 %23, 15
  %25 = and i32 %24, 1
  %26 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %27 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load i32, i32* %10, align 4
  %29 = ashr i32 %28, 11
  %30 = and i32 %29, 15
  %31 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %32 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp eq i32 %33, 2
  br i1 %34, label %38, label %35

35:                                               ; preds = %6
  %36 = load i32, i32* %12, align 4
  %37 = icmp eq i32 %36, 3
  br i1 %37, label %38, label %80

38:                                               ; preds = %35, %6
  %39 = load i32, i32* %14, align 4
  %40 = icmp eq i32 %39, 0
  br i1 %40, label %46, label %41

41:                                               ; preds = %38
  %42 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %43 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %42, i32 0, i32 2
  %44 = load i64, i64* %43, align 8
  %45 = icmp sgt i64 %44, 0
  br i1 %45, label %46, label %69

46:                                               ; preds = %41, %38
  %47 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %48 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %47, i32 0, i32 2
  store i64 0, i64* %48, align 8
  %49 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %50 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %49, i32 0, i32 4
  %51 = call i32 @mutex_unlock(i32* %50)
  %52 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %53 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %54 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %55 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %54, i32 0, i32 0
  %56 = load i8*, i8** %55, align 8
  %57 = getelementptr inbounds i8, i8* %56, i64 4
  %58 = load i32, i32* %14, align 4
  %59 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %52, %struct.u132_target* %53, i8* %57, i32 %58)
  %60 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %61 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %60, i32 0, i32 3
  store i64 0, i64* %61, align 8
  %62 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %63 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %62, i32 0, i32 1
  store i32 4, i32* %63, align 8
  %64 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %65 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %64, i32 0, i32 2
  store i32 0, i32* %65, align 4
  %66 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %67 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %66, i32 0, i32 0
  %68 = load i8*, i8** %67, align 8
  store i8* %68, i8** %7, align 8
  br label %103

69:                                               ; preds = %41
  %70 = load i32, i32* %14, align 4
  %71 = add nsw i32 4, %70
  %72 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %73 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 8
  %74 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %75 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %74, i32 0, i32 2
  store i32 1, i32* %75, align 4
  %76 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %77 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %76, i32 0, i32 4
  %78 = call i32 @mutex_unlock(i32* %77)
  %79 = load i8*, i8** %13, align 8
  store i8* %79, i8** %7, align 8
  br label %103

80:                                               ; preds = %35
  %81 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %82 = getelementptr inbounds %struct.u132_target, %struct.u132_target* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %84 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %83, i32 0, i32 4
  %85 = call i32 @mutex_unlock(i32* %84)
  %86 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %87 = load %struct.u132_target*, %struct.u132_target** %9, align 8
  %88 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %89 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %88, i32 0, i32 0
  %90 = load i8*, i8** %89, align 8
  %91 = getelementptr inbounds i8, i8* %90, i64 4
  %92 = load i32, i32* %14, align 4
  %93 = call i32 @ftdi_elan_do_callback(%struct.usb_ftdi* %86, %struct.u132_target* %87, i8* %91, i32 %92)
  %94 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %95 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %94, i32 0, i32 3
  store i64 0, i64* %95, align 8
  %96 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %97 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %96, i32 0, i32 1
  store i32 4, i32* %97, align 8
  %98 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %99 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %98, i32 0, i32 2
  store i32 0, i32* %99, align 4
  %100 = load %struct.usb_ftdi*, %struct.usb_ftdi** %8, align 8
  %101 = getelementptr inbounds %struct.usb_ftdi, %struct.usb_ftdi* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  store i8* %102, i8** %7, align 8
  br label %103

103:                                              ; preds = %80, %69, %46
  %104 = load i8*, i8** %7, align 8
  ret i8* %104
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ftdi_elan_do_callback(%struct.usb_ftdi*, %struct.u132_target*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
