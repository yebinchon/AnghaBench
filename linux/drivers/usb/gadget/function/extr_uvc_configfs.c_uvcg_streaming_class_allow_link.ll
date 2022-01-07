; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_streaming_class_allow_link.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_uvc_configfs.c_uvcg_streaming_class_allow_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { %struct.config_item*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.mutex }
%struct.mutex = type { i32 }
%struct.f_uvc_opts = type { %struct.mutex, i32, i64 }
%struct.uvc_descriptor_header = type { i32 }
%struct.uvcg_streaming_header = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"header\00", align 1
@EBUSY = common dso_local global i32 0, align 4
@__uvcg_cnt_strm = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@__uvcg_fill_strm = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.config_item*, %struct.config_item*)* @uvcg_streaming_class_allow_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uvcg_streaming_class_allow_link(%struct.config_item* %0, %struct.config_item* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_item*, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca %struct.config_item*, align 8
  %7 = alloca %struct.f_uvc_opts*, align 8
  %8 = alloca %struct.mutex*, align 8
  %9 = alloca %struct.uvc_descriptor_header***, align 8
  %10 = alloca %struct.uvc_descriptor_header**, align 8
  %11 = alloca %struct.uvcg_streaming_header*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  store %struct.config_item* %0, %struct.config_item** %3, align 8
  store %struct.config_item* %1, %struct.config_item** %4, align 8
  %17 = load %struct.config_item*, %struct.config_item** %3, align 8
  %18 = getelementptr inbounds %struct.config_item, %struct.config_item* %17, i32 0, i32 1
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  store %struct.mutex* %22, %struct.mutex** %8, align 8
  store i64 0, i64* %14, align 8
  store i64 0, i64* %15, align 8
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %16, align 4
  %25 = load %struct.mutex*, %struct.mutex** %8, align 8
  %26 = call i32 @mutex_lock(%struct.mutex* %25)
  %27 = load %struct.config_item*, %struct.config_item** %3, align 8
  %28 = getelementptr inbounds %struct.config_item, %struct.config_item* %27, i32 0, i32 0
  %29 = load %struct.config_item*, %struct.config_item** %28, align 8
  %30 = getelementptr inbounds %struct.config_item, %struct.config_item* %29, i32 0, i32 0
  %31 = load %struct.config_item*, %struct.config_item** %30, align 8
  store %struct.config_item* %31, %struct.config_item** %5, align 8
  %32 = load %struct.config_item*, %struct.config_item** %5, align 8
  %33 = call i32 @to_config_group(%struct.config_item* %32)
  %34 = call %struct.config_item* @config_group_find_item(i32 %33, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  store %struct.config_item* %34, %struct.config_item** %6, align 8
  %35 = load %struct.config_item*, %struct.config_item** %6, align 8
  %36 = icmp ne %struct.config_item* %35, null
  br i1 %36, label %37, label %43

37:                                               ; preds = %2
  %38 = load %struct.config_item*, %struct.config_item** %4, align 8
  %39 = getelementptr inbounds %struct.config_item, %struct.config_item* %38, i32 0, i32 0
  %40 = load %struct.config_item*, %struct.config_item** %39, align 8
  %41 = load %struct.config_item*, %struct.config_item** %6, align 8
  %42 = icmp ne %struct.config_item* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %37, %2
  br label %134

44:                                               ; preds = %37
  %45 = load %struct.config_item*, %struct.config_item** %5, align 8
  %46 = getelementptr inbounds %struct.config_item, %struct.config_item* %45, i32 0, i32 0
  %47 = load %struct.config_item*, %struct.config_item** %46, align 8
  %48 = call %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item* %47)
  store %struct.f_uvc_opts* %48, %struct.f_uvc_opts** %7, align 8
  %49 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %50 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %49, i32 0, i32 0
  %51 = call i32 @mutex_lock(%struct.mutex* %50)
  %52 = load %struct.config_item*, %struct.config_item** %3, align 8
  %53 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %54 = call %struct.uvc_descriptor_header*** @__uvcg_get_stream_class_arr(%struct.config_item* %52, %struct.f_uvc_opts* %53)
  store %struct.uvc_descriptor_header*** %54, %struct.uvc_descriptor_header**** %9, align 8
  %55 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %56 = icmp ne %struct.uvc_descriptor_header*** %55, null
  br i1 %56, label %57, label %66

57:                                               ; preds = %44
  %58 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %59 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %58, align 8
  %60 = icmp ne %struct.uvc_descriptor_header** %59, null
  br i1 %60, label %66, label %61

61:                                               ; preds = %57
  %62 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %63 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %69

66:                                               ; preds = %61, %57, %44
  %67 = load i32, i32* @EBUSY, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %16, align 4
  br label %130

69:                                               ; preds = %61
  %70 = load %struct.config_item*, %struct.config_item** %4, align 8
  %71 = call %struct.uvcg_streaming_header* @to_uvcg_streaming_header(%struct.config_item* %70)
  store %struct.uvcg_streaming_header* %71, %struct.uvcg_streaming_header** %11, align 8
  %72 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %11, align 8
  %73 = load i32, i32* @__uvcg_cnt_strm, align 4
  %74 = call i32 (%struct.uvcg_streaming_header*, ...) @__uvcg_iter_strm_cls(%struct.uvcg_streaming_header* %72, i64* %14, i64* %15, i32 %73)
  store i32 %74, i32* %16, align 4
  %75 = load i32, i32* %16, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %69
  br label %130

78:                                               ; preds = %69
  %79 = load i64, i64* %15, align 8
  %80 = add i64 %79, 2
  store i64 %80, i64* %15, align 8
  %81 = load i64, i64* %15, align 8
  %82 = load i32, i32* @GFP_KERNEL, align 4
  %83 = call %struct.uvc_descriptor_header** @kcalloc(i64 %81, i32 8, i32 %82)
  %84 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  store %struct.uvc_descriptor_header** %83, %struct.uvc_descriptor_header*** %84, align 8
  %85 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %86 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %85, align 8
  %87 = icmp ne %struct.uvc_descriptor_header** %86, null
  br i1 %87, label %91, label %88

88:                                               ; preds = %78
  %89 = load i32, i32* @ENOMEM, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  br label %130

91:                                               ; preds = %78
  %92 = load i64, i64* %14, align 8
  %93 = load i32, i32* @GFP_KERNEL, align 4
  %94 = call i8* @kzalloc(i64 %92, i32 %93)
  store i8* %94, i8** %13, align 8
  store i8* %94, i8** %12, align 8
  %95 = load i8*, i8** %12, align 8
  %96 = icmp ne i8* %95, null
  br i1 %96, label %105, label %97

97:                                               ; preds = %91
  %98 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %99 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %98, align 8
  %100 = bitcast %struct.uvc_descriptor_header** %99 to i8*
  %101 = call i32 @kfree(i8* %100)
  %102 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  store %struct.uvc_descriptor_header** null, %struct.uvc_descriptor_header*** %102, align 8
  %103 = load i32, i32* @ENOMEM, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %16, align 4
  br label %130

105:                                              ; preds = %91
  %106 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %107 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %106, align 8
  store %struct.uvc_descriptor_header** %107, %struct.uvc_descriptor_header*** %10, align 8
  %108 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %11, align 8
  %109 = load i32, i32* @__uvcg_fill_strm, align 4
  %110 = call i32 (%struct.uvcg_streaming_header*, ...) @__uvcg_iter_strm_cls(%struct.uvcg_streaming_header* %108, i8** %12, %struct.uvc_descriptor_header*** %10, i32 %109)
  store i32 %110, i32* %16, align 4
  %111 = load i32, i32* %16, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %113, label %121

113:                                              ; preds = %105
  %114 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  %115 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %114, align 8
  %116 = bitcast %struct.uvc_descriptor_header** %115 to i8*
  %117 = call i32 @kfree(i8* %116)
  %118 = load %struct.uvc_descriptor_header***, %struct.uvc_descriptor_header**** %9, align 8
  store %struct.uvc_descriptor_header** null, %struct.uvc_descriptor_header*** %118, align 8
  %119 = load i8*, i8** %13, align 8
  %120 = call i32 @kfree(i8* %119)
  br label %130

121:                                              ; preds = %105
  %122 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %123 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %122, i32 0, i32 1
  %124 = bitcast i32* %123 to %struct.uvc_descriptor_header*
  %125 = load %struct.uvc_descriptor_header**, %struct.uvc_descriptor_header*** %10, align 8
  store %struct.uvc_descriptor_header* %124, %struct.uvc_descriptor_header** %125, align 8
  %126 = load %struct.uvcg_streaming_header*, %struct.uvcg_streaming_header** %11, align 8
  %127 = getelementptr inbounds %struct.uvcg_streaming_header, %struct.uvcg_streaming_header* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = add nsw i32 %128, 1
  store i32 %129, i32* %127, align 4
  store i32 0, i32* %16, align 4
  br label %130

130:                                              ; preds = %121, %113, %97, %88, %77, %66
  %131 = load %struct.f_uvc_opts*, %struct.f_uvc_opts** %7, align 8
  %132 = getelementptr inbounds %struct.f_uvc_opts, %struct.f_uvc_opts* %131, i32 0, i32 0
  %133 = call i32 @mutex_unlock(%struct.mutex* %132)
  br label %134

134:                                              ; preds = %130, %43
  %135 = load %struct.config_item*, %struct.config_item** %6, align 8
  %136 = call i32 @config_item_put(%struct.config_item* %135)
  %137 = load %struct.mutex*, %struct.mutex** %8, align 8
  %138 = call i32 @mutex_unlock(%struct.mutex* %137)
  %139 = load i32, i32* %16, align 4
  ret i32 %139
}

declare dso_local i32 @mutex_lock(%struct.mutex*) #1

declare dso_local %struct.config_item* @config_group_find_item(i32, i8*) #1

declare dso_local i32 @to_config_group(%struct.config_item*) #1

declare dso_local %struct.f_uvc_opts* @to_f_uvc_opts(%struct.config_item*) #1

declare dso_local %struct.uvc_descriptor_header*** @__uvcg_get_stream_class_arr(%struct.config_item*, %struct.f_uvc_opts*) #1

declare dso_local %struct.uvcg_streaming_header* @to_uvcg_streaming_header(%struct.config_item*) #1

declare dso_local i32 @__uvcg_iter_strm_cls(%struct.uvcg_streaming_header*, ...) #1

declare dso_local %struct.uvc_descriptor_header** @kcalloc(i64, i32, i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local i32 @mutex_unlock(%struct.mutex*) #1

declare dso_local i32 @config_item_put(%struct.config_item*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
