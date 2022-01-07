; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay-sysfs.c_overlay_manager_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_overlay-sysfs.c_overlay_manager_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay = type { i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)*, %struct.omap_overlay_manager* }
%struct.omap_overlay_manager = type { i32 (%struct.omap_overlay_manager*)*, i32 }

@EINVAL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [18 x i8] c"manager %s found\0A\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"detach failed\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Failed to attach overlay\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.omap_overlay*, i8*, i64)* @overlay_manager_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @overlay_manager_store(%struct.omap_overlay* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.omap_overlay*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.omap_overlay_manager*, align 8
  %11 = alloca %struct.omap_overlay_manager*, align 8
  %12 = alloca i32, align 4
  store %struct.omap_overlay* %0, %struct.omap_overlay** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store %struct.omap_overlay_manager* null, %struct.omap_overlay_manager** %10, align 8
  %13 = load i64, i64* %7, align 8
  %14 = trunc i64 %13 to i32
  store i32 %14, i32* %12, align 4
  %15 = load i8*, i8** %6, align 8
  %16 = load i64, i64* %7, align 8
  %17 = sub i64 %16, 1
  %18 = getelementptr inbounds i8, i8* %15, i64 %17
  %19 = load i8, i8* %18, align 1
  %20 = sext i8 %19 to i32
  %21 = icmp eq i32 %20, 10
  br i1 %21, label %22, label %25

22:                                               ; preds = %3
  %23 = load i32, i32* %12, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %12, align 4
  br label %25

25:                                               ; preds = %22, %3
  %26 = load i32, i32* %12, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %48

28:                                               ; preds = %25
  store i32 0, i32* %8, align 4
  br label %29

29:                                               ; preds = %44, %28
  %30 = load i32, i32* %8, align 4
  %31 = call i32 (...) @omap_dss_get_num_overlay_managers()
  %32 = icmp slt i32 %30, %31
  br i1 %32, label %33, label %47

33:                                               ; preds = %29
  %34 = load i32, i32* %8, align 4
  %35 = call %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32 %34)
  store %struct.omap_overlay_manager* %35, %struct.omap_overlay_manager** %10, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %38 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = call i64 @sysfs_streq(i8* %36, i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %33
  br label %47

43:                                               ; preds = %33
  store %struct.omap_overlay_manager* null, %struct.omap_overlay_manager** %10, align 8
  br label %44

44:                                               ; preds = %43
  %45 = load i32, i32* %8, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %8, align 4
  br label %29

47:                                               ; preds = %42, %29
  br label %48

48:                                               ; preds = %47, %25
  %49 = load i32, i32* %12, align 4
  %50 = icmp sgt i32 %49, 0
  br i1 %50, label %51, label %57

51:                                               ; preds = %48
  %52 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %53 = icmp eq %struct.omap_overlay_manager* %52, null
  br i1 %53, label %54, label %57

54:                                               ; preds = %51
  %55 = load i64, i64* @EINVAL, align 8
  %56 = sub i64 0, %55
  store i64 %56, i64* %4, align 8
  br label %137

57:                                               ; preds = %51, %48
  %58 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %59 = icmp ne %struct.omap_overlay_manager* %58, null
  br i1 %59, label %60, label %65

60:                                               ; preds = %57
  %61 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %62 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 8
  %64 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %63)
  br label %65

65:                                               ; preds = %60, %57
  %66 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %67 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %68 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %67, i32 0, i32 2
  %69 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %68, align 8
  %70 = icmp eq %struct.omap_overlay_manager* %66, %69
  br i1 %70, label %71, label %73

71:                                               ; preds = %65
  %72 = load i64, i64* %7, align 8
  store i64 %72, i64* %4, align 8
  br label %137

73:                                               ; preds = %65
  %74 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %75 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %74, i32 0, i32 2
  %76 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %75, align 8
  store %struct.omap_overlay_manager* %76, %struct.omap_overlay_manager** %11, align 8
  %77 = call i32 (...) @dispc_runtime_get()
  store i32 %77, i32* %9, align 4
  %78 = load i32, i32* %9, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %83

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = sext i32 %81 to i64
  store i64 %82, i64* %4, align 8
  br label %137

83:                                               ; preds = %73
  %84 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %11, align 8
  %85 = icmp ne %struct.omap_overlay_manager* %84, null
  br i1 %85, label %86, label %106

86:                                               ; preds = %83
  %87 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %88 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %87, i32 0, i32 0
  %89 = load i32 (%struct.omap_overlay*)*, i32 (%struct.omap_overlay*)** %88, align 8
  %90 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %91 = call i32 %89(%struct.omap_overlay* %90)
  store i32 %91, i32* %9, align 4
  %92 = load i32, i32* %9, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = call i32 @DSSERR(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  br label %133

96:                                               ; preds = %86
  %97 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %11, align 8
  %98 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %97, i32 0, i32 0
  %99 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %98, align 8
  %100 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %11, align 8
  %101 = call i32 %99(%struct.omap_overlay_manager* %100)
  store i32 %101, i32* %9, align 4
  %102 = load i32, i32* %9, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %105

104:                                              ; preds = %96
  br label %133

105:                                              ; preds = %96
  br label %106

106:                                              ; preds = %105, %83
  %107 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %108 = icmp ne %struct.omap_overlay_manager* %107, null
  br i1 %108, label %109, label %130

109:                                              ; preds = %106
  %110 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %111 = getelementptr inbounds %struct.omap_overlay, %struct.omap_overlay* %110, i32 0, i32 1
  %112 = load i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay*, %struct.omap_overlay_manager*)** %111, align 8
  %113 = load %struct.omap_overlay*, %struct.omap_overlay** %5, align 8
  %114 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %115 = call i32 %112(%struct.omap_overlay* %113, %struct.omap_overlay_manager* %114)
  store i32 %115, i32* %9, align 4
  %116 = load i32, i32* %9, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = call i32 @DSSERR(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %133

120:                                              ; preds = %109
  %121 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %122 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %121, i32 0, i32 0
  %123 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %122, align 8
  %124 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %10, align 8
  %125 = call i32 %123(%struct.omap_overlay_manager* %124)
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %120
  br label %133

129:                                              ; preds = %120
  br label %130

130:                                              ; preds = %129, %106
  %131 = call i32 (...) @dispc_runtime_put()
  %132 = load i64, i64* %7, align 8
  store i64 %132, i64* %4, align 8
  br label %137

133:                                              ; preds = %128, %118, %104, %94
  %134 = call i32 (...) @dispc_runtime_put()
  %135 = load i32, i32* %9, align 4
  %136 = sext i32 %135 to i64
  store i64 %136, i64* %4, align 8
  br label %137

137:                                              ; preds = %133, %130, %80, %71, %54
  %138 = load i64, i64* %4, align 8
  ret i64 %138
}

declare dso_local i32 @omap_dss_get_num_overlay_managers(...) #1

declare dso_local %struct.omap_overlay_manager* @omap_dss_get_overlay_manager(i32) #1

declare dso_local i64 @sysfs_streq(i8*, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i32 @dispc_runtime_get(...) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i32 @dispc_runtime_put(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
