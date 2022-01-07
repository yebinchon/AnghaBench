; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/musb/extr_am35x.c_am35x_probe.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/musb/extr_am35x.c_am35x_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.platform_device_info = type { i32, %struct.musb_hdrc_platform_data*, i32, i32, i32* }
%struct.musb_hdrc_platform_data = type { i32* }
%struct.platform_device = type { i32, i32, i32 }
%struct.am35x_glue = type { %struct.platform_device*, %struct.platform_device*, %struct.platform_device*, %struct.platform_device*, i32* }
%struct.clk = type { i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"fck\00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"failed to get PHY clock\0A\00", align 1
@.str.2 = private unnamed_addr constant [4 x i8] c"ick\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"failed to get clock\0A\00", align 1
@.str.4 = private unnamed_addr constant [28 x i8] c"failed to enable PHY clock\0A\00", align 1
@.str.5 = private unnamed_addr constant [24 x i8] c"failed to enable clock\0A\00", align 1
@am35x_ops = common dso_local global i32 0, align 4
@am35x_dev_info = common dso_local global %struct.platform_device_info zeroinitializer, align 8
@.str.6 = private unnamed_addr constant [36 x i8] c"failed to register musb device: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.platform_device*)* @am35x_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @am35x_probe(%struct.platform_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.platform_device*, align 8
  %4 = alloca %struct.musb_hdrc_platform_data*, align 8
  %5 = alloca %struct.platform_device*, align 8
  %6 = alloca %struct.am35x_glue*, align 8
  %7 = alloca %struct.platform_device_info, align 8
  %8 = alloca %struct.clk*, align 8
  %9 = alloca %struct.clk*, align 8
  %10 = alloca i32, align 4
  store %struct.platform_device* %0, %struct.platform_device** %3, align 8
  %11 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %12 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %11, i32 0, i32 0
  %13 = call %struct.musb_hdrc_platform_data* @dev_get_platdata(i32* %12)
  store %struct.musb_hdrc_platform_data* %13, %struct.musb_hdrc_platform_data** %4, align 8
  %14 = load i32, i32* @ENOMEM, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.am35x_glue* @kzalloc(i32 40, i32 %16)
  store %struct.am35x_glue* %17, %struct.am35x_glue** %6, align 8
  %18 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %19 = icmp ne %struct.am35x_glue* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %1
  br label %158

21:                                               ; preds = %1
  %22 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %23 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %22, i32 0, i32 0
  %24 = call %struct.platform_device* @clk_get(i32* %23, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %25 = bitcast %struct.platform_device* %24 to %struct.clk*
  store %struct.clk* %25, %struct.clk** %8, align 8
  %26 = load %struct.clk*, %struct.clk** %8, align 8
  %27 = bitcast %struct.clk* %26 to %struct.platform_device*
  %28 = call i64 @IS_ERR(%struct.platform_device* %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %21
  %31 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %32 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %31, i32 0, i32 0
  %33 = call i32 (i32*, i8*, ...) @dev_err(i32* %32, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0))
  %34 = load %struct.clk*, %struct.clk** %8, align 8
  %35 = bitcast %struct.clk* %34 to %struct.platform_device*
  %36 = call i32 @PTR_ERR(%struct.platform_device* %35)
  store i32 %36, i32* %10, align 4
  br label %155

37:                                               ; preds = %21
  %38 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %39 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %38, i32 0, i32 0
  %40 = call %struct.platform_device* @clk_get(i32* %39, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.2, i64 0, i64 0))
  %41 = bitcast %struct.platform_device* %40 to %struct.clk*
  store %struct.clk* %41, %struct.clk** %9, align 8
  %42 = load %struct.clk*, %struct.clk** %9, align 8
  %43 = bitcast %struct.clk* %42 to %struct.platform_device*
  %44 = call i64 @IS_ERR(%struct.platform_device* %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %37
  %47 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %48 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %47, i32 0, i32 0
  %49 = call i32 (i32*, i8*, ...) @dev_err(i32* %48, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %50 = load %struct.clk*, %struct.clk** %9, align 8
  %51 = bitcast %struct.clk* %50 to %struct.platform_device*
  %52 = call i32 @PTR_ERR(%struct.platform_device* %51)
  store i32 %52, i32* %10, align 4
  br label %151

53:                                               ; preds = %37
  %54 = load %struct.clk*, %struct.clk** %8, align 8
  %55 = bitcast %struct.clk* %54 to %struct.platform_device*
  %56 = call i32 @clk_enable(%struct.platform_device* %55)
  store i32 %56, i32* %10, align 4
  %57 = load i32, i32* %10, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %63

59:                                               ; preds = %53
  %60 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %61 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %60, i32 0, i32 0
  %62 = call i32 (i32*, i8*, ...) @dev_err(i32* %61, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.4, i64 0, i64 0))
  br label %147

63:                                               ; preds = %53
  %64 = load %struct.clk*, %struct.clk** %9, align 8
  %65 = bitcast %struct.clk* %64 to %struct.platform_device*
  %66 = call i32 @clk_enable(%struct.platform_device* %65)
  store i32 %66, i32* %10, align 4
  %67 = load i32, i32* %10, align 4
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %73

69:                                               ; preds = %63
  %70 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %71 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %70, i32 0, i32 0
  %72 = call i32 (i32*, i8*, ...) @dev_err(i32* %71, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.5, i64 0, i64 0))
  br label %143

73:                                               ; preds = %63
  %74 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %75 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %74, i32 0, i32 0
  %76 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %77 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %76, i32 0, i32 4
  store i32* %75, i32** %77, align 8
  %78 = load %struct.clk*, %struct.clk** %8, align 8
  %79 = bitcast %struct.clk* %78 to %struct.platform_device*
  %80 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %81 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %80, i32 0, i32 3
  store %struct.platform_device* %79, %struct.platform_device** %81, align 8
  %82 = load %struct.clk*, %struct.clk** %9, align 8
  %83 = bitcast %struct.clk* %82 to %struct.platform_device*
  %84 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %85 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %84, i32 0, i32 2
  store %struct.platform_device* %83, %struct.platform_device** %85, align 8
  %86 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %4, align 8
  %87 = getelementptr inbounds %struct.musb_hdrc_platform_data, %struct.musb_hdrc_platform_data* %86, i32 0, i32 0
  store i32* @am35x_ops, i32** %87, align 8
  %88 = call %struct.platform_device* (...) @usb_phy_generic_register()
  %89 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %90 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %89, i32 0, i32 0
  store %struct.platform_device* %88, %struct.platform_device** %90, align 8
  %91 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %92 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %91, i32 0, i32 0
  %93 = load %struct.platform_device*, %struct.platform_device** %92, align 8
  %94 = call i64 @IS_ERR(%struct.platform_device* %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %101

96:                                               ; preds = %73
  %97 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %98 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %97, i32 0, i32 0
  %99 = load %struct.platform_device*, %struct.platform_device** %98, align 8
  %100 = call i32 @PTR_ERR(%struct.platform_device* %99)
  store i32 %100, i32* %10, align 4
  br label %139

101:                                              ; preds = %73
  %102 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %103 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %104 = call i32 @platform_set_drvdata(%struct.platform_device* %102, %struct.am35x_glue* %103)
  %105 = bitcast %struct.platform_device_info* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %105, i8* align 8 bitcast (%struct.platform_device_info* @am35x_dev_info to i8*), i64 32, i1 false)
  %106 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %107 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 4
  store i32* %107, i32** %108, align 8
  %109 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %110 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %109, i32 0, i32 2
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 3
  store i32 %111, i32* %112, align 4
  %113 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %114 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 2
  store i32 %115, i32* %116, align 8
  %117 = load %struct.musb_hdrc_platform_data*, %struct.musb_hdrc_platform_data** %4, align 8
  %118 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 1
  store %struct.musb_hdrc_platform_data* %117, %struct.musb_hdrc_platform_data** %118, align 8
  %119 = getelementptr inbounds %struct.platform_device_info, %struct.platform_device_info* %7, i32 0, i32 0
  store i32 8, i32* %119, align 8
  %120 = call %struct.platform_device* @platform_device_register_full(%struct.platform_device_info* %7)
  store %struct.platform_device* %120, %struct.platform_device** %5, align 8
  %121 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %122 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %121, i32 0, i32 1
  store %struct.platform_device* %120, %struct.platform_device** %122, align 8
  %123 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %124 = call i64 @IS_ERR(%struct.platform_device* %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %126, label %133

126:                                              ; preds = %101
  %127 = load %struct.platform_device*, %struct.platform_device** %5, align 8
  %128 = call i32 @PTR_ERR(%struct.platform_device* %127)
  store i32 %128, i32* %10, align 4
  %129 = load %struct.platform_device*, %struct.platform_device** %3, align 8
  %130 = getelementptr inbounds %struct.platform_device, %struct.platform_device* %129, i32 0, i32 0
  %131 = load i32, i32* %10, align 4
  %132 = call i32 (i32*, i8*, ...) @dev_err(i32* %130, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.6, i64 0, i64 0), i32 %131)
  br label %134

133:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %160

134:                                              ; preds = %126
  %135 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %136 = getelementptr inbounds %struct.am35x_glue, %struct.am35x_glue* %135, i32 0, i32 0
  %137 = load %struct.platform_device*, %struct.platform_device** %136, align 8
  %138 = call i32 @usb_phy_generic_unregister(%struct.platform_device* %137)
  br label %139

139:                                              ; preds = %134, %96
  %140 = load %struct.clk*, %struct.clk** %9, align 8
  %141 = bitcast %struct.clk* %140 to %struct.platform_device*
  %142 = call i32 @clk_disable(%struct.platform_device* %141)
  br label %143

143:                                              ; preds = %139, %69
  %144 = load %struct.clk*, %struct.clk** %8, align 8
  %145 = bitcast %struct.clk* %144 to %struct.platform_device*
  %146 = call i32 @clk_disable(%struct.platform_device* %145)
  br label %147

147:                                              ; preds = %143, %59
  %148 = load %struct.clk*, %struct.clk** %9, align 8
  %149 = bitcast %struct.clk* %148 to %struct.platform_device*
  %150 = call i32 @clk_put(%struct.platform_device* %149)
  br label %151

151:                                              ; preds = %147, %46
  %152 = load %struct.clk*, %struct.clk** %8, align 8
  %153 = bitcast %struct.clk* %152 to %struct.platform_device*
  %154 = call i32 @clk_put(%struct.platform_device* %153)
  br label %155

155:                                              ; preds = %151, %30
  %156 = load %struct.am35x_glue*, %struct.am35x_glue** %6, align 8
  %157 = call i32 @kfree(%struct.am35x_glue* %156)
  br label %158

158:                                              ; preds = %155, %20
  %159 = load i32, i32* %10, align 4
  store i32 %159, i32* %2, align 4
  br label %160

160:                                              ; preds = %158, %133
  %161 = load i32, i32* %2, align 4
  ret i32 %161
}

declare dso_local %struct.musb_hdrc_platform_data* @dev_get_platdata(i32*) #1

declare dso_local %struct.am35x_glue* @kzalloc(i32, i32) #1

declare dso_local %struct.platform_device* @clk_get(i32*, i8*) #1

declare dso_local i64 @IS_ERR(%struct.platform_device*) #1

declare dso_local i32 @dev_err(i32*, i8*, ...) #1

declare dso_local i32 @PTR_ERR(%struct.platform_device*) #1

declare dso_local i32 @clk_enable(%struct.platform_device*) #1

declare dso_local %struct.platform_device* @usb_phy_generic_register(...) #1

declare dso_local i32 @platform_set_drvdata(%struct.platform_device*, %struct.am35x_glue*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local %struct.platform_device* @platform_device_register_full(%struct.platform_device_info*) #1

declare dso_local i32 @usb_phy_generic_unregister(%struct.platform_device*) #1

declare dso_local i32 @clk_disable(%struct.platform_device*) #1

declare dso_local i32 @clk_put(%struct.platform_device*) #1

declare dso_local i32 @kfree(%struct.am35x_glue*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
