; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_assign_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/extr_manager.c_pnp_assign_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pnp_dev = type { i32 }
%struct.pnp_mem = type { i32, i64, i64, i64, i64 }
%struct.resource = type { i64, i64, i32 }

@IORESOURCE_MEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [48 x i8] c"  mem %d already set to %#llx-%#llx flags %#lx\0A\00", align 1
@IORESOURCE_AUTO = common dso_local global i32 0, align 4
@IORESOURCE_MEM_WRITEABLE = common dso_local global i32 0, align 4
@IORESOURCE_READONLY = common dso_local global i32 0, align 4
@IORESOURCE_MEM_RANGELENGTH = common dso_local global i32 0, align 4
@IORESOURCE_RANGELENGTH = common dso_local global i32 0, align 4
@IORESOURCE_MEM_SHADOWABLE = common dso_local global i32 0, align 4
@IORESOURCE_SHADOWABLE = common dso_local global i32 0, align 4
@IORESOURCE_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"  mem %d disabled\0A\00", align 1
@.str.2 = private unnamed_addr constant [48 x i8] c"  couldn't assign mem %d (min %#llx max %#llx)\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*, %struct.pnp_mem*, i32)* @pnp_assign_mem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnp_assign_mem(%struct.pnp_dev* %0, %struct.pnp_mem* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pnp_dev*, align 8
  %6 = alloca %struct.pnp_mem*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.resource*, align 8
  %9 = alloca %struct.resource, align 8
  store %struct.pnp_dev* %0, %struct.pnp_dev** %5, align 8
  store %struct.pnp_mem* %1, %struct.pnp_mem** %6, align 8
  store i32 %2, i32* %7, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %11 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %12 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @IORESOURCE_MEM, align 4
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
  %32 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %21, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25, i64 %28, i32 %31)
  store i32 0, i32* %4, align 4
  br label %177

33:                                               ; preds = %3
  store %struct.resource* %9, %struct.resource** %8, align 8
  %34 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %35 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %34, i32 0, i32 0
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
  %45 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %46 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @IORESOURCE_MEM_WRITEABLE, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %57, label %51

51:                                               ; preds = %33
  %52 = load i32, i32* @IORESOURCE_READONLY, align 4
  %53 = load %struct.resource*, %struct.resource** %8, align 8
  %54 = getelementptr inbounds %struct.resource, %struct.resource* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 8
  %56 = or i32 %55, %52
  store i32 %56, i32* %54, align 8
  br label %57

57:                                               ; preds = %51, %33
  %58 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %59 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load i32, i32* @IORESOURCE_MEM_RANGELENGTH, align 4
  %62 = and i32 %60, %61
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %70

64:                                               ; preds = %57
  %65 = load i32, i32* @IORESOURCE_RANGELENGTH, align 4
  %66 = load %struct.resource*, %struct.resource** %8, align 8
  %67 = getelementptr inbounds %struct.resource, %struct.resource* %66, i32 0, i32 2
  %68 = load i32, i32* %67, align 8
  %69 = or i32 %68, %65
  store i32 %69, i32* %67, align 8
  br label %70

70:                                               ; preds = %64, %57
  %71 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %72 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @IORESOURCE_MEM_SHADOWABLE, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %83

77:                                               ; preds = %70
  %78 = load i32, i32* @IORESOURCE_SHADOWABLE, align 4
  %79 = load %struct.resource*, %struct.resource** %8, align 8
  %80 = getelementptr inbounds %struct.resource, %struct.resource* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = or i32 %81, %78
  store i32 %82, i32* %80, align 8
  br label %83

83:                                               ; preds = %77, %70
  %84 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %85 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %98, label %88

88:                                               ; preds = %83
  %89 = load i32, i32* @IORESOURCE_DISABLED, align 4
  %90 = load %struct.resource*, %struct.resource** %8, align 8
  %91 = getelementptr inbounds %struct.resource, %struct.resource* %90, i32 0, i32 2
  %92 = load i32, i32* %91, align 8
  %93 = or i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %95 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %94, i32 0, i32 0
  %96 = load i32, i32* %7, align 4
  %97 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %95, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0), i32 %96)
  br label %165

98:                                               ; preds = %83
  %99 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %100 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %99, i32 0, i32 2
  %101 = load i64, i64* %100, align 8
  %102 = load %struct.resource*, %struct.resource** %8, align 8
  %103 = getelementptr inbounds %struct.resource, %struct.resource* %102, i32 0, i32 0
  store i64 %101, i64* %103, align 8
  %104 = load %struct.resource*, %struct.resource** %8, align 8
  %105 = getelementptr inbounds %struct.resource, %struct.resource* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %108 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %107, i32 0, i32 1
  %109 = load i64, i64* %108, align 8
  %110 = add nsw i64 %106, %109
  %111 = sub nsw i64 %110, 1
  %112 = load %struct.resource*, %struct.resource** %8, align 8
  %113 = getelementptr inbounds %struct.resource, %struct.resource* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  br label %114

114:                                              ; preds = %163, %98
  %115 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %116 = load %struct.resource*, %struct.resource** %8, align 8
  %117 = call i32 @pnp_check_mem(%struct.pnp_dev* %115, %struct.resource* %116)
  %118 = icmp ne i32 %117, 0
  %119 = xor i1 %118, true
  br i1 %119, label %120, label %164

120:                                              ; preds = %114
  %121 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %122 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %121, i32 0, i32 3
  %123 = load i64, i64* %122, align 8
  %124 = load %struct.resource*, %struct.resource** %8, align 8
  %125 = getelementptr inbounds %struct.resource, %struct.resource* %124, i32 0, i32 0
  %126 = load i64, i64* %125, align 8
  %127 = add nsw i64 %126, %123
  store i64 %127, i64* %125, align 8
  %128 = load %struct.resource*, %struct.resource** %8, align 8
  %129 = getelementptr inbounds %struct.resource, %struct.resource* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %132 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %131, i32 0, i32 1
  %133 = load i64, i64* %132, align 8
  %134 = add nsw i64 %130, %133
  %135 = sub nsw i64 %134, 1
  %136 = load %struct.resource*, %struct.resource** %8, align 8
  %137 = getelementptr inbounds %struct.resource, %struct.resource* %136, i32 0, i32 1
  store i64 %135, i64* %137, align 8
  %138 = load %struct.resource*, %struct.resource** %8, align 8
  %139 = getelementptr inbounds %struct.resource, %struct.resource* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %142 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %141, i32 0, i32 4
  %143 = load i64, i64* %142, align 8
  %144 = icmp sgt i64 %140, %143
  br i1 %144, label %150, label %145

145:                                              ; preds = %120
  %146 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %147 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %146, i32 0, i32 3
  %148 = load i64, i64* %147, align 8
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %163, label %150

150:                                              ; preds = %145, %120
  %151 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %152 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %151, i32 0, i32 0
  %153 = load i32, i32* %7, align 4
  %154 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %155 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %154, i32 0, i32 2
  %156 = load i64, i64* %155, align 8
  %157 = load %struct.pnp_mem*, %struct.pnp_mem** %6, align 8
  %158 = getelementptr inbounds %struct.pnp_mem, %struct.pnp_mem* %157, i32 0, i32 4
  %159 = load i64, i64* %158, align 8
  %160 = call i32 (i32*, i8*, i32, ...) @pnp_dbg(i32* %152, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.2, i64 0, i64 0), i32 %153, i64 %156, i64 %159)
  %161 = load i32, i32* @EBUSY, align 4
  %162 = sub nsw i32 0, %161
  store i32 %162, i32* %4, align 4
  br label %177

163:                                              ; preds = %145
  br label %114

164:                                              ; preds = %114
  br label %165

165:                                              ; preds = %164, %88
  %166 = load %struct.pnp_dev*, %struct.pnp_dev** %5, align 8
  %167 = load %struct.resource*, %struct.resource** %8, align 8
  %168 = getelementptr inbounds %struct.resource, %struct.resource* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.resource*, %struct.resource** %8, align 8
  %171 = getelementptr inbounds %struct.resource, %struct.resource* %170, i32 0, i32 1
  %172 = load i64, i64* %171, align 8
  %173 = load %struct.resource*, %struct.resource** %8, align 8
  %174 = getelementptr inbounds %struct.resource, %struct.resource* %173, i32 0, i32 2
  %175 = load i32, i32* %174, align 8
  %176 = call i32 @pnp_add_mem_resource(%struct.pnp_dev* %166, i64 %169, i64 %172, i32 %175)
  store i32 0, i32* %4, align 4
  br label %177

177:                                              ; preds = %165, %150, %19
  %178 = load i32, i32* %4, align 4
  ret i32 %178
}

declare dso_local %struct.resource* @pnp_find_resource(%struct.pnp_dev*, i32, i32, i32) #1

declare dso_local i32 @pnp_dbg(i32*, i8*, i32, ...) #1

declare dso_local i32 @pnp_check_mem(%struct.pnp_dev*, %struct.resource*) #1

declare dso_local i32 @pnp_add_mem_resource(%struct.pnp_dev*, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
