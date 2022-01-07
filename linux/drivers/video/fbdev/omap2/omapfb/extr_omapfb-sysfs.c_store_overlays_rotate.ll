; ModuleID = '/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_overlays_rotate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/video/fbdev/omap2/omapfb/extr_omapfb-sysfs.c_store_overlays_rotate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.fb_info = type { i32 }
%struct.omapfb_info = type { i32, i32*, i32 }

@OMAPFB_MAX_OVL_PER_FB = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @store_overlays_rotate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @store_overlays_rotate(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.device*, align 8
  %6 = alloca %struct.device_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.fb_info*, align 8
  %10 = alloca %struct.omapfb_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i64, align 8
  %18 = alloca i8*, align 8
  %19 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %5, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  %20 = load %struct.device*, %struct.device** %5, align 8
  %21 = call %struct.fb_info* @dev_get_drvdata(%struct.device* %20)
  store %struct.fb_info* %21, %struct.fb_info** %9, align 8
  %22 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %23 = call %struct.omapfb_info* @FB2OFB(%struct.fb_info* %22)
  store %struct.omapfb_info* %23, %struct.omapfb_info** %10, align 8
  store i32 0, i32* %11, align 4
  store i32 0, i32* %15, align 4
  %24 = load i32, i32* @OMAPFB_MAX_OVL_PER_FB, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %16, align 8
  %27 = alloca i32, i64 %25, align 16
  store i64 %25, i64* %17, align 8
  %28 = load i8*, i8** %7, align 8
  %29 = call i32 @strlen(i8* %28)
  store i32 %29, i32* %14, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %14, align 4
  %32 = sub nsw i32 %31, 1
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8, i8* %30, i64 %33
  %35 = load i8, i8* %34, align 1
  %36 = sext i8 %35 to i32
  %37 = icmp eq i32 %36, 10
  br i1 %37, label %38, label %41

38:                                               ; preds = %4
  %39 = load i32, i32* %14, align 4
  %40 = sub nsw i32 %39, 1
  store i32 %40, i32* %14, align 4
  br label %41

41:                                               ; preds = %38, %4
  %42 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %43 = call i32 @lock_fb_info(%struct.fb_info* %42)
  %44 = load i32, i32* %14, align 4
  %45 = icmp sgt i32 %44, 0
  br i1 %45, label %46, label %95

46:                                               ; preds = %41
  %47 = load i8*, i8** %7, align 8
  store i8* %47, i8** %18, align 8
  br label %48

48:                                               ; preds = %86, %46
  %49 = load i8*, i8** %18, align 8
  %50 = load i8*, i8** %7, align 8
  %51 = load i32, i32* %14, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds i8, i8* %50, i64 %52
  %54 = icmp ult i8* %49, %53
  br i1 %54, label %55, label %94

55:                                               ; preds = %48
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %58 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = icmp eq i32 %56, %59
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %12, align 4
  br label %144

64:                                               ; preds = %55
  %65 = load i8*, i8** %18, align 8
  %66 = call i32 @simple_strtoul(i8* %65, i8** %18, i32 0)
  store i32 %66, i32* %19, align 4
  %67 = load i32, i32* %19, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %64
  %70 = load i32, i32* %19, align 4
  %71 = icmp sgt i32 %70, 3
  br i1 %71, label %72, label %75

72:                                               ; preds = %69, %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %12, align 4
  br label %144

75:                                               ; preds = %69
  %76 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %77 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %76, i32 0, i32 1
  %78 = load i32*, i32** %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* %19, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %86

85:                                               ; preds = %75
  store i32 1, i32* %15, align 4
  br label %86

86:                                               ; preds = %85, %75
  %87 = load i32, i32* %19, align 4
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  %90 = sext i32 %88 to i64
  %91 = getelementptr inbounds i32, i32* %27, i64 %90
  store i32 %87, i32* %91, align 4
  %92 = load i8*, i8** %18, align 8
  %93 = getelementptr inbounds i8, i8* %92, i32 1
  store i8* %93, i8** %18, align 8
  br label %48

94:                                               ; preds = %48
  br label %95

95:                                               ; preds = %94, %41
  %96 = load i32, i32* %11, align 4
  %97 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %98 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = icmp ne i32 %96, %99
  br i1 %100, label %101, label %104

101:                                              ; preds = %95
  %102 = load i32, i32* @EINVAL, align 4
  %103 = sub nsw i32 0, %102
  store i32 %103, i32* %12, align 4
  br label %144

104:                                              ; preds = %95
  %105 = load i32, i32* %15, align 4
  %106 = icmp ne i32 %105, 0
  br i1 %106, label %107, label %141

107:                                              ; preds = %104
  store i32 0, i32* %13, align 4
  br label %108

108:                                              ; preds = %123, %107
  %109 = load i32, i32* %13, align 4
  %110 = load i32, i32* %11, align 4
  %111 = icmp slt i32 %109, %110
  br i1 %111, label %112, label %126

112:                                              ; preds = %108
  %113 = load i32, i32* %13, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %27, i64 %114
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %118 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %117, i32 0, i32 1
  %119 = load i32*, i32** %118, align 8
  %120 = load i32, i32* %13, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds i32, i32* %119, i64 %121
  store i32 %116, i32* %122, align 4
  br label %123

123:                                              ; preds = %112
  %124 = load i32, i32* %13, align 4
  %125 = add nsw i32 %124, 1
  store i32 %125, i32* %13, align 4
  br label %108

126:                                              ; preds = %108
  %127 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %128 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 8
  %130 = call i32 @omapfb_get_mem_region(i32 %129)
  %131 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %132 = call i32 @omapfb_apply_changes(%struct.fb_info* %131, i32 0)
  store i32 %132, i32* %12, align 4
  %133 = load %struct.omapfb_info*, %struct.omapfb_info** %10, align 8
  %134 = getelementptr inbounds %struct.omapfb_info, %struct.omapfb_info* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = call i32 @omapfb_put_mem_region(i32 %135)
  %137 = load i32, i32* %12, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %140

139:                                              ; preds = %126
  br label %144

140:                                              ; preds = %126
  br label %141

141:                                              ; preds = %140, %104
  %142 = load i64, i64* %8, align 8
  %143 = trunc i64 %142 to i32
  store i32 %143, i32* %12, align 4
  br label %144

144:                                              ; preds = %141, %139, %101, %72, %61
  %145 = load %struct.fb_info*, %struct.fb_info** %9, align 8
  %146 = call i32 @unlock_fb_info(%struct.fb_info* %145)
  %147 = load i32, i32* %12, align 4
  %148 = load i8*, i8** %16, align 8
  call void @llvm.stackrestore(i8* %148)
  ret i32 %147
}

declare dso_local %struct.fb_info* @dev_get_drvdata(%struct.device*) #1

declare dso_local %struct.omapfb_info* @FB2OFB(%struct.fb_info*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @lock_fb_info(%struct.fb_info*) #1

declare dso_local i32 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @omapfb_get_mem_region(i32) #1

declare dso_local i32 @omapfb_apply_changes(%struct.fb_info*, i32) #1

declare dso_local i32 @omapfb_put_mem_region(i32) #1

declare dso_local i32 @unlock_fb_info(%struct.fb_info*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
