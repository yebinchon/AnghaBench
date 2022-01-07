; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_gpct_device_construct.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_ni_tio.c_ni_gpct_device_construct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ni_gpct_device = type { void (%struct.ni_gpct*, i32, i32)*, i32 (%struct.ni_gpct.0*, i32)*, i32, i32, i32, i32, i32, i32, %struct.ni_gpct_device*, %struct.ni_gpct_device*, %struct.ni_gpct_device*, i32, %struct.ni_route_tables*, %struct.comedi_device* }
%struct.ni_gpct = type opaque
%struct.ni_gpct.0 = type opaque
%struct.comedi_device = type { i32 }
%struct.ni_route_tables = type { i32 }
%struct.ni_gpct.1 = type { void (%struct.ni_gpct.1*, i32, i32)*, i32 (%struct.ni_gpct.1*, i32)*, i32, i32, i32, i32, i32, i32, %struct.ni_gpct.1*, %struct.ni_gpct.1*, %struct.ni_gpct.1*, i32, %struct.ni_route_tables*, %struct.comedi_device* }

@GFP_KERNEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ni_gpct_device* @ni_gpct_device_construct(%struct.comedi_device* %0, {}* %1, {}* %2, i32 %3, i32 %4, i32 %5, %struct.ni_route_tables* %6) #0 {
  %8 = alloca %struct.ni_gpct_device*, align 8
  %9 = alloca %struct.comedi_device*, align 8
  %10 = alloca {}*, align 8
  %11 = alloca {}*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ni_route_tables*, align 8
  %16 = alloca %struct.ni_gpct_device*, align 8
  %17 = alloca %struct.ni_gpct.1*, align 8
  %18 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %9, align 8
  store {}* %1, {}** %10, align 8
  store {}* %2, {}** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i32 %5, i32* %14, align 4
  store %struct.ni_route_tables* %6, %struct.ni_route_tables** %15, align 8
  %19 = load i32, i32* %13, align 4
  %20 = icmp eq i32 %19, 0
  br i1 %20, label %24, label %21

21:                                               ; preds = %7
  %22 = load i32, i32* %14, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %7
  store %struct.ni_gpct_device* null, %struct.ni_gpct_device** %8, align 8
  br label %129

25:                                               ; preds = %21
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.ni_gpct_device* @kzalloc(i32 88, i32 %26)
  store %struct.ni_gpct_device* %27, %struct.ni_gpct_device** %16, align 8
  %28 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %29 = icmp ne %struct.ni_gpct_device* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %25
  store %struct.ni_gpct_device* null, %struct.ni_gpct_device** %8, align 8
  br label %129

31:                                               ; preds = %25
  %32 = load %struct.comedi_device*, %struct.comedi_device** %9, align 8
  %33 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %34 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %33, i32 0, i32 13
  store %struct.comedi_device* %32, %struct.comedi_device** %34, align 8
  %35 = load {}*, {}** %10, align 8
  %36 = bitcast {}* %35 to void (%struct.ni_gpct*, i32, i32)*
  %37 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %38 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %37, i32 0, i32 0
  store void (%struct.ni_gpct*, i32, i32)* %36, void (%struct.ni_gpct*, i32, i32)** %38, align 8
  %39 = load {}*, {}** %11, align 8
  %40 = bitcast {}* %39 to i32 (%struct.ni_gpct.0*, i32)*
  %41 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %42 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %41, i32 0, i32 1
  store i32 (%struct.ni_gpct.0*, i32)* %40, i32 (%struct.ni_gpct.0*, i32)** %42, align 8
  %43 = load i32, i32* %12, align 4
  %44 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %45 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %44, i32 0, i32 2
  store i32 %43, i32* %45, align 8
  %46 = load %struct.ni_route_tables*, %struct.ni_route_tables** %15, align 8
  %47 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %48 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %47, i32 0, i32 12
  store %struct.ni_route_tables* %46, %struct.ni_route_tables** %48, align 8
  %49 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %50 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %49, i32 0, i32 11
  %51 = call i32 @spin_lock_init(i32* %50)
  %52 = load i32, i32* %13, align 4
  %53 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %54 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 4
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* %14, align 4
  %57 = call i32 @DIV_ROUND_UP(i32 %55, i32 %56)
  %58 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %59 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %58, i32 0, i32 4
  store i32 %57, i32* %59, align 8
  %60 = load i32, i32* %13, align 4
  %61 = load i32, i32* @GFP_KERNEL, align 4
  %62 = call i8* @kcalloc(i32 %60, i32 88, i32 %61)
  %63 = bitcast i8* %62 to %struct.ni_gpct_device*
  %64 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %65 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %64, i32 0, i32 9
  store %struct.ni_gpct_device* %63, %struct.ni_gpct_device** %65, align 8
  %66 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %67 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %66, i32 0, i32 4
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kcalloc(i32 %68, i32 88, i32 %69)
  %71 = bitcast i8* %70 to %struct.ni_gpct_device*
  %72 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %73 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %72, i32 0, i32 10
  store %struct.ni_gpct_device* %71, %struct.ni_gpct_device** %73, align 8
  %74 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %75 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %74, i32 0, i32 10
  %76 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %75, align 8
  %77 = icmp ne %struct.ni_gpct_device* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %31
  %79 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %80 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %79, i32 0, i32 9
  %81 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %80, align 8
  %82 = icmp ne %struct.ni_gpct_device* %81, null
  br i1 %82, label %94, label %83

83:                                               ; preds = %78, %31
  %84 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %85 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %84, i32 0, i32 10
  %86 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %85, align 8
  %87 = call i32 @kfree(%struct.ni_gpct_device* %86)
  %88 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %89 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %88, i32 0, i32 9
  %90 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %89, align 8
  %91 = call i32 @kfree(%struct.ni_gpct_device* %90)
  %92 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %93 = call i32 @kfree(%struct.ni_gpct_device* %92)
  store %struct.ni_gpct_device* null, %struct.ni_gpct_device** %8, align 8
  br label %129

94:                                               ; preds = %78
  store i32 0, i32* %18, align 4
  br label %95

95:                                               ; preds = %124, %94
  %96 = load i32, i32* %18, align 4
  %97 = load i32, i32* %13, align 4
  %98 = icmp ult i32 %96, %97
  br i1 %98, label %99, label %127

99:                                               ; preds = %95
  %100 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %101 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %100, i32 0, i32 9
  %102 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %101, align 8
  %103 = load i32, i32* %18, align 4
  %104 = zext i32 %103 to i64
  %105 = getelementptr inbounds %struct.ni_gpct_device, %struct.ni_gpct_device* %102, i64 %104
  %106 = bitcast %struct.ni_gpct_device* %105 to %struct.ni_gpct.1*
  store %struct.ni_gpct.1* %106, %struct.ni_gpct.1** %17, align 8
  %107 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  %108 = bitcast %struct.ni_gpct_device* %107 to %struct.ni_gpct.1*
  %109 = load %struct.ni_gpct.1*, %struct.ni_gpct.1** %17, align 8
  %110 = getelementptr inbounds %struct.ni_gpct.1, %struct.ni_gpct.1* %109, i32 0, i32 8
  store %struct.ni_gpct.1* %108, %struct.ni_gpct.1** %110, align 8
  %111 = load i32, i32* %18, align 4
  %112 = load i32, i32* %14, align 4
  %113 = udiv i32 %111, %112
  %114 = load %struct.ni_gpct.1*, %struct.ni_gpct.1** %17, align 8
  %115 = getelementptr inbounds %struct.ni_gpct.1, %struct.ni_gpct.1* %114, i32 0, i32 5
  store i32 %113, i32* %115, align 4
  %116 = load i32, i32* %18, align 4
  %117 = load i32, i32* %14, align 4
  %118 = urem i32 %116, %117
  %119 = load %struct.ni_gpct.1*, %struct.ni_gpct.1** %17, align 8
  %120 = getelementptr inbounds %struct.ni_gpct.1, %struct.ni_gpct.1* %119, i32 0, i32 6
  store i32 %118, i32* %120, align 8
  %121 = load %struct.ni_gpct.1*, %struct.ni_gpct.1** %17, align 8
  %122 = getelementptr inbounds %struct.ni_gpct.1, %struct.ni_gpct.1* %121, i32 0, i32 7
  %123 = call i32 @spin_lock_init(i32* %122)
  br label %124

124:                                              ; preds = %99
  %125 = load i32, i32* %18, align 4
  %126 = add i32 %125, 1
  store i32 %126, i32* %18, align 4
  br label %95

127:                                              ; preds = %95
  %128 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %16, align 8
  store %struct.ni_gpct_device* %128, %struct.ni_gpct_device** %8, align 8
  br label %129

129:                                              ; preds = %127, %83, %30, %24
  %130 = load %struct.ni_gpct_device*, %struct.ni_gpct_device** %8, align 8
  ret %struct.ni_gpct_device* %130
}

declare dso_local %struct.ni_gpct_device* @kzalloc(i32, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.ni_gpct_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
