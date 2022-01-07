; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_attr_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/mellanox/extr_mlxreg-io.c_mlxreg_io_attr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mlxreg_io_priv_data = type { %struct.TYPE_13__**, %struct.TYPE_13__, %struct.TYPE_14__**, %struct.TYPE_12__*, %struct.TYPE_11__*, %struct.TYPE_9__* }
%struct.TYPE_13__ = type { %struct.TYPE_14__** }
%struct.TYPE_14__ = type { i64, i32 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_15__ }
%struct.TYPE_15__ = type { %struct.TYPE_14__ }
%struct.TYPE_11__ = type { i32, %struct.TYPE_10__* }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@mlxreg_io_devattr_rw = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Memory allocation failed for sysfs attribute %d.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mlxreg_io_priv_data*)* @mlxreg_io_attr_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mlxreg_io_attr_init(%struct.mlxreg_io_priv_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mlxreg_io_priv_data*, align 8
  %4 = alloca i32, align 4
  store %struct.mlxreg_io_priv_data* %0, %struct.mlxreg_io_priv_data** %3, align 8
  %5 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %6 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %5, i32 0, i32 5
  %7 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %7, i32 0, i32 0
  %9 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %10 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %9, i32 0, i32 4
  %11 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @GFP_KERNEL, align 4
  %15 = call %struct.TYPE_14__** @devm_kcalloc(i32* %8, i32 %13, i32 8, i32 %14)
  %16 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %17 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %17, i32 0, i32 0
  store %struct.TYPE_14__** %15, %struct.TYPE_14__*** %18, align 8
  %19 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %20 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %19, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %21, align 8
  %23 = icmp ne %struct.TYPE_14__** %22, null
  br i1 %23, label %27, label %24

24:                                               ; preds = %1
  %25 = load i32, i32* @ENOMEM, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %2, align 4
  br label %178

27:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %28

28:                                               ; preds = %158, %27
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %31 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %30, i32 0, i32 4
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp slt i32 %29, %34
  br i1 %35, label %36, label %161

36:                                               ; preds = %28
  %37 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %38 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %37, i32 0, i32 3
  %39 = load %struct.TYPE_12__*, %struct.TYPE_12__** %38, align 8
  %40 = load i32, i32* %4, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %39, i64 %41
  %43 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %43, i32 0, i32 0
  %45 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %46 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %45, i32 0, i32 2
  %47 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %46, align 8
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %47, i64 %49
  store %struct.TYPE_14__* %44, %struct.TYPE_14__** %50, align 8
  %51 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %52 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %51, i32 0, i32 3
  %53 = load %struct.TYPE_12__*, %struct.TYPE_12__** %52, align 8
  %54 = load i32, i32* %4, align 4
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %53, i64 %55
  %57 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %56, i32 0, i32 1
  %58 = call i32 @memcpy(%struct.TYPE_15__* %57, i32* @mlxreg_io_devattr_rw, i32 4)
  %59 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %60 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %59, i32 0, i32 5
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %61, i32 0, i32 0
  %63 = load i32, i32* @GFP_KERNEL, align 4
  %64 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %65 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %64, i32 0, i32 4
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %66, i32 0, i32 1
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %67, align 8
  %69 = load i32, i32* %4, align 4
  %70 = sext i32 %69 to i64
  %71 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i64 %70
  %72 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i64 @devm_kasprintf(i32* %62, i32 %63, i32 %73)
  %75 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %76 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %75, i32 0, i32 2
  %77 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %76, align 8
  %78 = load i32, i32* %4, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %77, i64 %79
  %81 = load %struct.TYPE_14__*, %struct.TYPE_14__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %81, i32 0, i32 0
  store i64 %74, i64* %82, align 8
  %83 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %84 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %83, i32 0, i32 2
  %85 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %84, align 8
  %86 = load i32, i32* %4, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %85, i64 %87
  %89 = load %struct.TYPE_14__*, %struct.TYPE_14__** %88, align 8
  %90 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %103, label %93

93:                                               ; preds = %36
  %94 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %95 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %94, i32 0, i32 5
  %96 = load %struct.TYPE_9__*, %struct.TYPE_9__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i32, i32* %4, align 4
  %99 = add nsw i32 %98, 1
  %100 = call i32 @dev_err(i32* %97, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0), i32 %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %2, align 4
  br label %178

103:                                              ; preds = %36
  %104 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %105 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %104, i32 0, i32 4
  %106 = load %struct.TYPE_11__*, %struct.TYPE_11__** %105, align 8
  %107 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %106, i32 0, i32 1
  %108 = load %struct.TYPE_10__*, %struct.TYPE_10__** %107, align 8
  %109 = load i32, i32* %4, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %108, i64 %110
  %112 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %115 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %114, i32 0, i32 3
  %116 = load %struct.TYPE_12__*, %struct.TYPE_12__** %115, align 8
  %117 = load i32, i32* %4, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %116, i64 %118
  %120 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %119, i32 0, i32 1
  %121 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %121, i32 0, i32 1
  store i32 %113, i32* %122, align 8
  %123 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %124 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %123, i32 0, i32 2
  %125 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %124, align 8
  %126 = load i32, i32* %4, align 4
  %127 = sext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_14__*, %struct.TYPE_14__** %125, i64 %127
  %129 = load %struct.TYPE_14__*, %struct.TYPE_14__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %133 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %132, i32 0, i32 3
  %134 = load %struct.TYPE_12__*, %struct.TYPE_12__** %133, align 8
  %135 = load i32, i32* %4, align 4
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %138, i32 0, i32 0
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i64 %131, i64* %140, align 8
  %141 = load i32, i32* %4, align 4
  %142 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %143 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %142, i32 0, i32 3
  %144 = load %struct.TYPE_12__*, %struct.TYPE_12__** %143, align 8
  %145 = load i32, i32* %4, align 4
  %146 = sext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %147, i32 0, i32 0
  store i32 %141, i32* %148, align 8
  %149 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %150 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %149, i32 0, i32 3
  %151 = load %struct.TYPE_12__*, %struct.TYPE_12__** %150, align 8
  %152 = load i32, i32* %4, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %151, i64 %153
  %155 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %154, i32 0, i32 1
  %156 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %155, i32 0, i32 0
  %157 = call i32 @sysfs_attr_init(%struct.TYPE_14__* %156)
  br label %158

158:                                              ; preds = %103
  %159 = load i32, i32* %4, align 4
  %160 = add nsw i32 %159, 1
  store i32 %160, i32* %4, align 4
  br label %28

161:                                              ; preds = %28
  %162 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %163 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %162, i32 0, i32 2
  %164 = load %struct.TYPE_14__**, %struct.TYPE_14__*** %163, align 8
  %165 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %166 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %165, i32 0, i32 1
  %167 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %166, i32 0, i32 0
  store %struct.TYPE_14__** %164, %struct.TYPE_14__*** %167, align 8
  %168 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %169 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %168, i32 0, i32 1
  %170 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %171 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %170, i32 0, i32 0
  %172 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %172, i64 0
  store %struct.TYPE_13__* %169, %struct.TYPE_13__** %173, align 8
  %174 = load %struct.mlxreg_io_priv_data*, %struct.mlxreg_io_priv_data** %3, align 8
  %175 = getelementptr inbounds %struct.mlxreg_io_priv_data, %struct.mlxreg_io_priv_data* %174, i32 0, i32 0
  %176 = load %struct.TYPE_13__**, %struct.TYPE_13__*** %175, align 8
  %177 = getelementptr inbounds %struct.TYPE_13__*, %struct.TYPE_13__** %176, i64 1
  store %struct.TYPE_13__* null, %struct.TYPE_13__** %177, align 8
  store i32 0, i32* %2, align 4
  br label %178

178:                                              ; preds = %161, %93, %24
  %179 = load i32, i32* %2, align 4
  ret i32 %179
}

declare dso_local %struct.TYPE_14__** @devm_kcalloc(i32*, i32, i32, i32) #1

declare dso_local i32 @memcpy(%struct.TYPE_15__*, i32*, i32) #1

declare dso_local i64 @devm_kasprintf(i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @sysfs_attr_init(%struct.TYPE_14__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
