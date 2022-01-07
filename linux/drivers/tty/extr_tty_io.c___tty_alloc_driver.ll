; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c___tty_alloc_driver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_io.c___tty_alloc_driver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_driver = type { i32, i64, %struct.tty_driver*, %struct.tty_driver*, %struct.tty_driver*, %struct.tty_driver*, %struct.module*, i32, i32 }
%struct.module = type { i32 }

@TTY_DRIVER_UNNUMBERED_NODE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@TTY_DRIVER_MAGIC = common dso_local global i32 0, align 4
@TTY_DRIVER_DEVPTS_MEM = common dso_local global i64 0, align 8
@TTY_DRIVER_DYNAMIC_ALLOC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.tty_driver* @__tty_alloc_driver(i32 %0, %struct.module* %1, i64 %2) #0 {
  %4 = alloca %struct.tty_driver*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.module*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tty_driver*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.module* %1, %struct.module** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 1, i32* %9, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %21

13:                                               ; preds = %3
  %14 = load i64, i64* %7, align 8
  %15 = load i64, i64* @TTY_DRIVER_UNNUMBERED_NODE, align 8
  %16 = and i64 %14, %15
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %13
  %19 = load i32, i32* %5, align 4
  %20 = icmp ugt i32 %19, 1
  br i1 %20, label %21, label %25

21:                                               ; preds = %18, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  %24 = call %struct.tty_driver* @ERR_PTR(i32 %23)
  store %struct.tty_driver* %24, %struct.tty_driver** %4, align 8
  br label %138

25:                                               ; preds = %18, %13
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.tty_driver* @kzalloc(i32 64, i32 %26)
  store %struct.tty_driver* %27, %struct.tty_driver** %8, align 8
  %28 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %29 = icmp ne %struct.tty_driver* %28, null
  br i1 %29, label %34, label %30

30:                                               ; preds = %25
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  %33 = call %struct.tty_driver* @ERR_PTR(i32 %32)
  store %struct.tty_driver* %33, %struct.tty_driver** %4, align 8
  br label %138

34:                                               ; preds = %25
  %35 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %36 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %35, i32 0, i32 8
  %37 = call i32 @kref_init(i32* %36)
  %38 = load i32, i32* @TTY_DRIVER_MAGIC, align 4
  %39 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %40 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %39, i32 0, i32 7
  store i32 %38, i32* %40, align 8
  %41 = load i32, i32* %5, align 4
  %42 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %43 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %42, i32 0, i32 0
  store i32 %41, i32* %43, align 8
  %44 = load %struct.module*, %struct.module** %6, align 8
  %45 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %46 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %45, i32 0, i32 6
  store %struct.module* %44, %struct.module** %46, align 8
  %47 = load i64, i64* %7, align 8
  %48 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %49 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %48, i32 0, i32 1
  store i64 %47, i64* %49, align 8
  %50 = load i64, i64* %7, align 8
  %51 = load i64, i64* @TTY_DRIVER_DEVPTS_MEM, align 8
  %52 = and i64 %50, %51
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %80, label %54

54:                                               ; preds = %34
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @GFP_KERNEL, align 4
  %57 = call i8* @kcalloc(i32 %55, i32 64, i32 %56)
  %58 = bitcast i8* %57 to %struct.tty_driver*
  %59 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %60 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %59, i32 0, i32 4
  store %struct.tty_driver* %58, %struct.tty_driver** %60, align 8
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kcalloc(i32 %61, i32 64, i32 %62)
  %64 = bitcast i8* %63 to %struct.tty_driver*
  %65 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %66 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %65, i32 0, i32 3
  store %struct.tty_driver* %64, %struct.tty_driver** %66, align 8
  %67 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %68 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %67, i32 0, i32 4
  %69 = load %struct.tty_driver*, %struct.tty_driver** %68, align 8
  %70 = icmp ne %struct.tty_driver* %69, null
  br i1 %70, label %71, label %76

71:                                               ; preds = %54
  %72 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %73 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %72, i32 0, i32 3
  %74 = load %struct.tty_driver*, %struct.tty_driver** %73, align 8
  %75 = icmp ne %struct.tty_driver* %74, null
  br i1 %75, label %79, label %76

76:                                               ; preds = %71, %54
  %77 = load i32, i32* @ENOMEM, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %10, align 4
  br label %117

79:                                               ; preds = %71
  br label %80

80:                                               ; preds = %79, %34
  %81 = load i64, i64* %7, align 8
  %82 = load i64, i64* @TTY_DRIVER_DYNAMIC_ALLOC, align 8
  %83 = and i64 %81, %82
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %101, label %85

85:                                               ; preds = %80
  %86 = load i32, i32* %5, align 4
  %87 = load i32, i32* @GFP_KERNEL, align 4
  %88 = call i8* @kcalloc(i32 %86, i32 64, i32 %87)
  %89 = bitcast i8* %88 to %struct.tty_driver*
  %90 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %91 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %90, i32 0, i32 5
  store %struct.tty_driver* %89, %struct.tty_driver** %91, align 8
  %92 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %93 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %92, i32 0, i32 5
  %94 = load %struct.tty_driver*, %struct.tty_driver** %93, align 8
  %95 = icmp ne %struct.tty_driver* %94, null
  br i1 %95, label %99, label %96

96:                                               ; preds = %85
  %97 = load i32, i32* @ENOMEM, align 4
  %98 = sub nsw i32 0, %97
  store i32 %98, i32* %10, align 4
  br label %117

99:                                               ; preds = %85
  %100 = load i32, i32* %5, align 4
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %99, %80
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i8* @kcalloc(i32 %102, i32 64, i32 %103)
  %105 = bitcast i8* %104 to %struct.tty_driver*
  %106 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %107 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %106, i32 0, i32 2
  store %struct.tty_driver* %105, %struct.tty_driver** %107, align 8
  %108 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %109 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %108, i32 0, i32 2
  %110 = load %struct.tty_driver*, %struct.tty_driver** %109, align 8
  %111 = icmp ne %struct.tty_driver* %110, null
  br i1 %111, label %115, label %112

112:                                              ; preds = %101
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %10, align 4
  br label %117

115:                                              ; preds = %101
  %116 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  store %struct.tty_driver* %116, %struct.tty_driver** %4, align 8
  br label %138

117:                                              ; preds = %112, %96, %76
  %118 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %119 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %118, i32 0, i32 5
  %120 = load %struct.tty_driver*, %struct.tty_driver** %119, align 8
  %121 = call i32 @kfree(%struct.tty_driver* %120)
  %122 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %123 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %122, i32 0, i32 4
  %124 = load %struct.tty_driver*, %struct.tty_driver** %123, align 8
  %125 = call i32 @kfree(%struct.tty_driver* %124)
  %126 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %127 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %126, i32 0, i32 3
  %128 = load %struct.tty_driver*, %struct.tty_driver** %127, align 8
  %129 = call i32 @kfree(%struct.tty_driver* %128)
  %130 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %131 = getelementptr inbounds %struct.tty_driver, %struct.tty_driver* %130, i32 0, i32 2
  %132 = load %struct.tty_driver*, %struct.tty_driver** %131, align 8
  %133 = call i32 @kfree(%struct.tty_driver* %132)
  %134 = load %struct.tty_driver*, %struct.tty_driver** %8, align 8
  %135 = call i32 @kfree(%struct.tty_driver* %134)
  %136 = load i32, i32* %10, align 4
  %137 = call %struct.tty_driver* @ERR_PTR(i32 %136)
  store %struct.tty_driver* %137, %struct.tty_driver** %4, align 8
  br label %138

138:                                              ; preds = %117, %115, %30, %21
  %139 = load %struct.tty_driver*, %struct.tty_driver** %4, align 8
  ret %struct.tty_driver* %139
}

declare dso_local %struct.tty_driver* @ERR_PTR(i32) #1

declare dso_local %struct.tty_driver* @kzalloc(i32, i32) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i8* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.tty_driver*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
