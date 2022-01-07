; ModuleID = '/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_response_devinfo.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sh/maple/extr_maple.c_maple_response_devinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.maple_device = type { i64, i64 }

@started = common dso_local global i32 0, align 4
@scanning = common dso_local global i32 0, align 4
@fullscan = common dso_local global i32 0, align 4
@checked = common dso_local global i32* null, align 8
@empty = common dso_local global i32* null, align 8
@subdevice_map = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.maple_device*, i8*)* @maple_response_devinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @maple_response_devinfo(%struct.maple_device* %0, i8* %1) #0 {
  %3 = alloca %struct.maple_device*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8, align 1
  store %struct.maple_device* %0, %struct.maple_device** %3, align 8
  store i8* %1, i8** %4, align 8
  %6 = load i32, i32* @started, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %14

8:                                                ; preds = %2
  %9 = load i32, i32* @scanning, align 4
  %10 = icmp eq i32 %9, 2
  br i1 %10, label %14, label %11

11:                                               ; preds = %8
  %12 = load i32, i32* @fullscan, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %58, label %14

14:                                               ; preds = %11, %8, %2
  %15 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %16 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %14
  %20 = load i32*, i32** @checked, align 8
  %21 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %22 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds i32, i32* %20, i64 %23
  %25 = load i32, i32* %24, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %19
  %28 = load i32*, i32** @checked, align 8
  %29 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %30 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = getelementptr inbounds i32, i32* %28, i64 %31
  store i32 1, i32* %32, align 4
  %33 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %34 = call i32 @maple_attach_driver(%struct.maple_device* %33)
  br label %57

35:                                               ; preds = %19, %14
  %36 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %37 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %43

40:                                               ; preds = %35
  %41 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %42 = call i32 @maple_attach_driver(%struct.maple_device* %41)
  br label %43

43:                                               ; preds = %40, %35
  %44 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %45 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp eq i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %43
  %49 = load i32*, i32** @empty, align 8
  %50 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %51 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = getelementptr inbounds i32, i32* %49, i64 %52
  store i32 0, i32* %53, align 4
  %54 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %55 = call i32 @maple_attach_driver(%struct.maple_device* %54)
  br label %56

56:                                               ; preds = %48, %43
  br label %57

57:                                               ; preds = %56, %27
  br label %58

58:                                               ; preds = %57, %11
  %59 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %60 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp eq i64 %61, 0
  br i1 %62, label %63, label %92

63:                                               ; preds = %58
  %64 = load i8*, i8** %4, align 8
  %65 = getelementptr inbounds i8, i8* %64, i64 2
  %66 = load i8, i8* %65, align 1
  %67 = sext i8 %66 to i32
  %68 = and i32 %67, 31
  %69 = trunc i32 %68 to i8
  store i8 %69, i8* %5, align 1
  %70 = load i8, i8* %5, align 1
  %71 = sext i8 %70 to i32
  %72 = load i8*, i8** @subdevice_map, align 8
  %73 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %74 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = getelementptr inbounds i8, i8* %72, i64 %75
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = xor i32 %71, %78
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %91

81:                                               ; preds = %63
  %82 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %83 = load i8, i8* %5, align 1
  %84 = call i32 @maple_map_subunits(%struct.maple_device* %82, i8 signext %83)
  %85 = load i8, i8* %5, align 1
  %86 = load i8*, i8** @subdevice_map, align 8
  %87 = load %struct.maple_device*, %struct.maple_device** %3, align 8
  %88 = getelementptr inbounds %struct.maple_device, %struct.maple_device* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = getelementptr inbounds i8, i8* %86, i64 %89
  store i8 %85, i8* %90, align 1
  br label %91

91:                                               ; preds = %81, %63
  br label %92

92:                                               ; preds = %91, %58
  ret void
}

declare dso_local i32 @maple_attach_driver(%struct.maple_device*) #1

declare dso_local i32 @maple_map_subunits(%struct.maple_device*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
