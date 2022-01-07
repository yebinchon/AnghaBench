; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_display_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/dss/extr_manager-sysfs.c_manager_display_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.omap_overlay_manager = type { i32 (%struct.omap_overlay_manager*)*, %struct.omap_dss_device* (%struct.omap_overlay_manager*)* }
%struct.omap_dss_device = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)* }

@manager_display_match = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"display %s found\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"new display is already connected\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"new display is not disabled\0A\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"old display is not disabled\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"failed to connect new device\0A\00", align 1
@.str.5 = private unnamed_addr constant [42 x i8] c"failed to connect device to this manager\0A\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"failed to apply dispc config\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.omap_overlay_manager*, i8*, i64)* @manager_display_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @manager_display_store(%struct.omap_overlay_manager* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.omap_overlay_manager*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.omap_dss_device*, align 8
  %11 = alloca %struct.omap_dss_device*, align 8
  store %struct.omap_overlay_manager* %0, %struct.omap_overlay_manager** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %12 = load i64, i64* %7, align 8
  store i64 %12, i64* %9, align 8
  store %struct.omap_dss_device* null, %struct.omap_dss_device** %10, align 8
  %13 = load i8*, i8** %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = sub i64 %14, 1
  %16 = getelementptr inbounds i8, i8* %13, i64 %15
  %17 = load i8, i8* %16, align 1
  %18 = sext i8 %17 to i32
  %19 = icmp eq i32 %18, 10
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load i64, i64* %9, align 8
  %22 = add i64 %21, -1
  store i64 %22, i64* %9, align 8
  br label %23

23:                                               ; preds = %20, %3
  %24 = load i64, i64* %9, align 8
  %25 = icmp ugt i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %23
  %27 = load i8*, i8** %6, align 8
  %28 = load i32, i32* @manager_display_match, align 4
  %29 = call %struct.omap_dss_device* @omap_dss_find_device(i8* %27, i32 %28)
  store %struct.omap_dss_device* %29, %struct.omap_dss_device** %10, align 8
  br label %30

30:                                               ; preds = %26, %23
  %31 = load i64, i64* %9, align 8
  %32 = icmp ugt i64 %31, 0
  br i1 %32, label %33, label %39

33:                                               ; preds = %30
  %34 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %35 = icmp eq %struct.omap_dss_device* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %33
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %149

39:                                               ; preds = %33, %30
  %40 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %41 = icmp ne %struct.omap_dss_device* %40, null
  br i1 %41, label %42, label %63

42:                                               ; preds = %39
  %43 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %44 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @DSSDBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %48 = call i64 @omapdss_device_is_connected(%struct.omap_dss_device* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %42
  %51 = call i32 @DSSERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %132

54:                                               ; preds = %42
  %55 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %56 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %62

58:                                               ; preds = %54
  %59 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  %60 = load i32, i32* @EINVAL, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %8, align 4
  br label %132

62:                                               ; preds = %54
  br label %63

63:                                               ; preds = %62, %39
  %64 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %65 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %64, i32 0, i32 1
  %66 = load %struct.omap_dss_device* (%struct.omap_overlay_manager*)*, %struct.omap_dss_device* (%struct.omap_overlay_manager*)** %65, align 8
  %67 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %68 = call %struct.omap_dss_device* %66(%struct.omap_overlay_manager* %67)
  store %struct.omap_dss_device* %68, %struct.omap_dss_device** %11, align 8
  %69 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %70 = icmp ne %struct.omap_dss_device* %69, null
  br i1 %70, label %71, label %87

71:                                               ; preds = %63
  %72 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %73 = call i64 @omapdss_device_is_enabled(%struct.omap_dss_device* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %71
  %76 = call i32 @DSSERR(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %77 = load i32, i32* @EINVAL, align 4
  %78 = sub nsw i32 0, %77
  store i32 %78, i32* %8, align 4
  br label %132

79:                                               ; preds = %71
  %80 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %81 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %80, i32 0, i32 0
  %82 = load %struct.TYPE_2__*, %struct.TYPE_2__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %83, align 8
  %85 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %86 = call i32 %84(%struct.omap_dss_device* %85)
  br label %87

87:                                               ; preds = %79, %63
  %88 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %89 = icmp ne %struct.omap_dss_device* %88, null
  br i1 %89, label %90, label %131

90:                                               ; preds = %87
  %91 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %92 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %91, i32 0, i32 0
  %93 = load %struct.TYPE_2__*, %struct.TYPE_2__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %93, i32 0, i32 0
  %95 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %94, align 8
  %96 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %97 = call i32 %95(%struct.omap_dss_device* %96)
  store i32 %97, i32* %8, align 4
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %102

100:                                              ; preds = %90
  %101 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  br label %132

102:                                              ; preds = %90
  %103 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %104 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %103, i32 0, i32 1
  %105 = load %struct.omap_dss_device* (%struct.omap_overlay_manager*)*, %struct.omap_dss_device* (%struct.omap_overlay_manager*)** %104, align 8
  %106 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %107 = call %struct.omap_dss_device* %105(%struct.omap_overlay_manager* %106)
  store %struct.omap_dss_device* %107, %struct.omap_dss_device** %11, align 8
  %108 = load %struct.omap_dss_device*, %struct.omap_dss_device** %11, align 8
  %109 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %110 = icmp ne %struct.omap_dss_device* %108, %109
  br i1 %110, label %111, label %120

111:                                              ; preds = %102
  %112 = call i32 @DSSERR(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.5, i64 0, i64 0))
  %113 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %114 = getelementptr inbounds %struct.omap_dss_device, %struct.omap_dss_device* %113, i32 0, i32 0
  %115 = load %struct.TYPE_2__*, %struct.TYPE_2__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  %117 = load i32 (%struct.omap_dss_device*)*, i32 (%struct.omap_dss_device*)** %116, align 8
  %118 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %119 = call i32 %117(%struct.omap_dss_device* %118)
  br label %132

120:                                              ; preds = %102
  %121 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %122 = getelementptr inbounds %struct.omap_overlay_manager, %struct.omap_overlay_manager* %121, i32 0, i32 0
  %123 = load i32 (%struct.omap_overlay_manager*)*, i32 (%struct.omap_overlay_manager*)** %122, align 8
  %124 = load %struct.omap_overlay_manager*, %struct.omap_overlay_manager** %5, align 8
  %125 = call i32 %123(%struct.omap_overlay_manager* %124)
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %8, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %130

128:                                              ; preds = %120
  %129 = call i32 @DSSERR(i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.6, i64 0, i64 0))
  br label %132

130:                                              ; preds = %120
  br label %131

131:                                              ; preds = %130, %87
  br label %132

132:                                              ; preds = %131, %128, %111, %100, %75, %58, %50
  %133 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %134 = icmp ne %struct.omap_dss_device* %133, null
  br i1 %134, label %135, label %138

135:                                              ; preds = %132
  %136 = load %struct.omap_dss_device*, %struct.omap_dss_device** %10, align 8
  %137 = call i32 @omap_dss_put_device(%struct.omap_dss_device* %136)
  br label %138

138:                                              ; preds = %135, %132
  %139 = load i32, i32* %8, align 4
  %140 = icmp ne i32 %139, 0
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* %8, align 4
  %143 = sext i32 %142 to i64
  br label %146

144:                                              ; preds = %138
  %145 = load i64, i64* %7, align 8
  br label %146

146:                                              ; preds = %144, %141
  %147 = phi i64 [ %143, %141 ], [ %145, %144 ]
  %148 = trunc i64 %147 to i32
  store i32 %148, i32* %4, align 4
  br label %149

149:                                              ; preds = %146, %36
  %150 = load i32, i32* %4, align 4
  ret i32 %150
}

declare dso_local %struct.omap_dss_device* @omap_dss_find_device(i8*, i32) #1

declare dso_local i32 @DSSDBG(i8*, i32) #1

declare dso_local i64 @omapdss_device_is_connected(%struct.omap_dss_device*) #1

declare dso_local i32 @DSSERR(i8*) #1

declare dso_local i64 @omapdss_device_is_enabled(%struct.omap_dss_device*) #1

declare dso_local i32 @omap_dss_put_device(%struct.omap_dss_device*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
