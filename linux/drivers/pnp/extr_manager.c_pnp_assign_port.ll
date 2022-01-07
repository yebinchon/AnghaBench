; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_assign_port.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_assign_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_port = type { i32, i64, i64, i64, i64 }
%struct.resource = type { i64, i64, i32 }

@IORESOURCE_IO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"  io %d already set to %#llx-%#llx flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [18 x i8] c"  io %d disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"  couldn't assign io %d (min %#llx max %#llx)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_port*, i32)* @pnp_assign_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_port(%struct.pnp_dev* %0, %struct.pnp_port* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_port*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_port* %1, %struct.pnp_port** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %12 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IORESOURCE_IO, align 4
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.resource* @pnp_find_resource(%struct.pnp_dev* %10, i32 %13, i32 %14, i32 %15)
  store %struct.resource* %16, %struct.resource** %8, align 8
  %17 = load %struct.resource*, %struct.resource** %8, align 8
  %18 = icmp ne %struct.resource* %17, null
  br i1 %18, label %19, label %33

19:                                               ; preds = %3
  %20 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %21 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %20, i32 0, i32 0
  %22 = load i32, i32* %7, align 4
  %23 = load %struct.resource*, %struct.resource** %8, align 8
  %24 = getelementptr inbounds %struct.resource, %struct.resource* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.resource*, %struct.resource** %8, align 8
  %27 = getelementptr inbounds %struct.resource, %struct.resource* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.resource*, %struct.resource** %8, align 8
  %30 = getelementptr inbounds %struct.resource, %struct.resource* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 8
  %32 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %21, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %28, i32 %31)
  store i32 0, i32* %4, align 4
  br label %138

33:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %34 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %35 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load i32, i32* @IORESOURCE_AUTO, align 4
  %38 = or i32 %36, %37
  %39 = load %struct.resource*, %struct.resource** %8, align 8
  %40 = getelementptr inbounds %struct.resource, %struct.resource* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.resource*, %struct.resource** %8, align 8
  %42 = getelementptr inbounds %struct.resource, %struct.resource* %41, i32 0, i32 0
  store i64 0, i64* %42, align 8
  %43 = load %struct.resource*, %struct.resource** %8, align 8
  %44 = getelementptr inbounds %struct.resource, %struct.resource* %43, i32 0, i32 1
  store i64 0, i64* %44, align 8
  %45 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %46 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %59, label %49

49:                                               ; preds = %33
  %50 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %51 = load %struct.resource*, %struct.resource** %8, align 8
  %52 = getelementptr inbounds %struct.resource, %struct.resource* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = or i32 %53, %50
  store i32 %54, i32* %52, align 8
  %55 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %56 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %55, i32 0, i32 0
  %57 = load i32, i32* %7, align 4
  %58 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %56, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.1, i64 0, i64 0), i32 %57)
  br label %126

59:                                               ; preds = %33
  %60 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %61 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load %struct.resource*, %struct.resource** %8, align 8
  %64 = getelementptr inbounds %struct.resource, %struct.resource* %63, i32 0, i32 0
  store i64 %62, i64* %64, align 8
  %65 = load %struct.resource*, %struct.resource** %8, align 8
  %66 = getelementptr inbounds %struct.resource, %struct.resource* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %69 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %67, %70
  %72 = sub nsw i64 %71, 1
  %73 = load %struct.resource*, %struct.resource** %8, align 8
  %74 = getelementptr inbounds %struct.resource, %struct.resource* %73, i32 0, i32 1
  store i64 %72, i64* %74, align 8
  br label %75

75:                                               ; preds = %124, %59
  %76 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %77 = load %struct.resource*, %struct.resource** %8, align 8
  %78 = call i32 @pnp_check_port(%struct.pnp_dev* %76, %struct.resource* %77)
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  br i1 %80, label %81, label %125

81:                                               ; preds = %75
  %82 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %83 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %82, i32 0, i32 3
  %84 = load i64, i64* %83, align 8
  %85 = load %struct.resource*, %struct.resource** %8, align 8
  %86 = getelementptr inbounds %struct.resource, %struct.resource* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = add nsw i64 %87, %84
  store i64 %88, i64* %86, align 8
  %89 = load %struct.resource*, %struct.resource** %8, align 8
  %90 = getelementptr inbounds %struct.resource, %struct.resource* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %93 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %92, i32 0, i32 1
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %91, %94
  %96 = sub nsw i64 %95, 1
  %97 = load %struct.resource*, %struct.resource** %8, align 8
  %98 = getelementptr inbounds %struct.resource, %struct.resource* %97, i32 0, i32 1
  store i64 %96, i64* %98, align 8
  %99 = load %struct.resource*, %struct.resource** %8, align 8
  %100 = getelementptr inbounds %struct.resource, %struct.resource* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %103 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %102, i32 0, i32 4
  %104 = load i64, i64* %103, align 8
  %105 = icmp sgt i64 %101, %104
  br i1 %105, label %111, label %106

106:                                              ; preds = %81
  %107 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %108 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %107, i32 0, i32 3
  %109 = load i64, i64* %108, align 8
  %110 = icmp ne i64 %109, 0
  br i1 %110, label %124, label %111

111:                                              ; preds = %106, %81
  %112 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %113 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %112, i32 0, i32 0
  %114 = load i32, i32* %7, align 4
  %115 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %116 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %115, i32 0, i32 2
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.pnp_port*, %struct.pnp_port** %6, align 8
  %119 = getelementptr inbounds %struct.pnp_port, %struct.pnp_port* %118, i32 0, i32 4
  %120 = load i64, i64* %119, align 8
  %121 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %113, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0), i32 %114, i64 %117, i64 %120)
  %122 = load i32, i32* @EBUSY, align 4
  %123 = sub nsw i32 0, %122
  store i32 %123, i32* %4, align 4
  br label %138

124:                                              ; preds = %106
  br label %75

125:                                              ; preds = %75
  br label %126

126:                                              ; preds = %125, %49
  %127 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %128 = load %struct.resource*, %struct.resource** %8, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.resource*, %struct.resource** %8, align 8
  %132 = getelementptr inbounds %struct.resource, %struct.resource* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = load %struct.resource*, %struct.resource** %8, align 8
  %135 = getelementptr inbounds %struct.resource, %struct.resource* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  %137 = call i32 @pnp_add_io_resource(%struct.pnp_dev* %127, i64 %130, i64 %133, i32 %136)
  store i32 0, i32* %4, align 4
  br label %138

138:                                              ; preds = %126, %111, %19
  %139 = load i32, i32* %4, align 4
  ret i32 %139
}

declare dso_local %struct.resource* @pnp_find_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @pnp_check_port(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_io_resource(%struct.pnp_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
