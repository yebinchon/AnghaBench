; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_gadgets_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/extr_configfs.c_gadgets_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32 }
%struct.config_group = type { i32 }
%struct.gadget_info = type { %struct.config_group, %struct.TYPE_6__, %struct.TYPE_8__, i32, i32, i32, %struct.config_group, %struct.config_group, %struct.config_group, %struct.config_group }
%struct.TYPE_6__ = type { %struct.TYPE_7__, i32, i32, i32*, i32*, i8*, i8* }
%struct.TYPE_8__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@gadget_root_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"functions\00", align 1
@functions_type = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"configs\00", align 1
@config_desc_type = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [8 x i8] c"strings\00", align 1
@gadget_strings_strings_type = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [8 x i8] c"os_desc\00", align 1
@os_desc_type = common dso_local global i32 0, align 4
@configfs_do_nothing = common dso_local global i8* null, align 8
@USB_SPEED_SUPER = common dso_local global i32 0, align 4
@USB_DT_DEVICE_SIZE = common dso_local global i32 0, align 4
@USB_DT_DEVICE = common dso_local global i32 0, align 4
@configfs_driver_template = common dso_local global %struct.TYPE_7__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @gadgets_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @gadgets_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gadget_info*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.gadget_info* @kzalloc(i32 96, i32 %7)
  store %struct.gadget_info* %8, %struct.gadget_info** %6, align 8
  %9 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %10 = icmp ne %struct.gadget_info* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_group* @ERR_PTR(i32 %13)
  store %struct.config_group* %14, %struct.config_group** %3, align 8
  br label %133

15:                                               ; preds = %2
  %16 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %17 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @config_group_init_type_name(%struct.config_group* %17, i8* %18, i32* @gadget_root_type)
  %20 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %21 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %20, i32 0, i32 9
  %22 = call i32 @config_group_init_type_name(%struct.config_group* %21, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32* @functions_type)
  %23 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %24 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %23, i32 0, i32 9
  %25 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %26 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %25, i32 0, i32 0
  %27 = call i32 @configfs_add_default_group(%struct.config_group* %24, %struct.config_group* %26)
  %28 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %29 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %28, i32 0, i32 8
  %30 = call i32 @config_group_init_type_name(%struct.config_group* %29, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32* @config_desc_type)
  %31 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %32 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %31, i32 0, i32 8
  %33 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %34 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %33, i32 0, i32 0
  %35 = call i32 @configfs_add_default_group(%struct.config_group* %32, %struct.config_group* %34)
  %36 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %37 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %36, i32 0, i32 7
  %38 = call i32 @config_group_init_type_name(%struct.config_group* %37, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32* @gadget_strings_strings_type)
  %39 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %40 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %39, i32 0, i32 7
  %41 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %42 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %41, i32 0, i32 0
  %43 = call i32 @configfs_add_default_group(%struct.config_group* %40, %struct.config_group* %42)
  %44 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %45 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %44, i32 0, i32 6
  %46 = call i32 @config_group_init_type_name(%struct.config_group* %45, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32* @os_desc_type)
  %47 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %48 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %47, i32 0, i32 6
  %49 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %50 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %49, i32 0, i32 0
  %51 = call i32 @configfs_add_default_group(%struct.config_group* %48, %struct.config_group* %50)
  %52 = load i8*, i8** @configfs_do_nothing, align 8
  %53 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %54 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 6
  store i8* %52, i8** %55, align 8
  %56 = load i8*, i8** @configfs_do_nothing, align 8
  %57 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %58 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %58, i32 0, i32 5
  store i8* %56, i8** %59, align 8
  %60 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %61 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 4
  store i32* null, i32** %62, align 8
  %63 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %64 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %63, i32 0, i32 1
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  store i32* null, i32** %65, align 8
  %66 = load i32, i32* @USB_SPEED_SUPER, align 4
  %67 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %68 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %67, i32 0, i32 1
  %69 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %68, i32 0, i32 2
  store i32 %66, i32* %69, align 8
  %70 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %71 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %70, i32 0, i32 5
  %72 = call i32 @mutex_init(i32* %71)
  %73 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %74 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %73, i32 0, i32 4
  %75 = call i32 @INIT_LIST_HEAD(i32* %74)
  %76 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %77 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %76, i32 0, i32 3
  %78 = call i32 @INIT_LIST_HEAD(i32* %77)
  %79 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %80 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %79, i32 0, i32 2
  %81 = call i32 @composite_init_dev(%struct.TYPE_8__* %80)
  %82 = load i32, i32* @USB_DT_DEVICE_SIZE, align 4
  %83 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %84 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %85, i32 0, i32 2
  store i32 %82, i32* %86, align 8
  %87 = load i32, i32* @USB_DT_DEVICE, align 4
  %88 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %89 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %90, i32 0, i32 1
  store i32 %87, i32* %91, align 4
  %92 = call i32 (...) @get_default_bcdDevice()
  %93 = call i32 @cpu_to_le16(i32 %92)
  %94 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %95 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %94, i32 0, i32 2
  %96 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %95, i32 0, i32 0
  %97 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %96, i32 0, i32 0
  store i32 %93, i32* %97, align 8
  %98 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %99 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %98, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  %101 = bitcast %struct.TYPE_7__* %100 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %101, i8* align 4 bitcast (%struct.TYPE_7__* @configfs_driver_template to i8*), i64 4, i1 false)
  %102 = load i8*, i8** %5, align 8
  %103 = load i32, i32* @GFP_KERNEL, align 4
  %104 = call i32 @kstrdup(i8* %102, i32 %103)
  %105 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %106 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %105, i32 0, i32 1
  %107 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 0
  store i32 %104, i32* %108, align 8
  %109 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %110 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 0
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %115 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %114, i32 0, i32 1
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 1
  store i32 %113, i32* %116, align 4
  %117 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %118 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %118, i32 0, i32 0
  %120 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 8
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %124, label %123

123:                                              ; preds = %15
  br label %127

124:                                              ; preds = %15
  %125 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %126 = getelementptr inbounds %struct.gadget_info, %struct.gadget_info* %125, i32 0, i32 0
  store %struct.config_group* %126, %struct.config_group** %3, align 8
  br label %133

127:                                              ; preds = %123
  %128 = load %struct.gadget_info*, %struct.gadget_info** %6, align 8
  %129 = call i32 @kfree(%struct.gadget_info* %128)
  %130 = load i32, i32* @ENOMEM, align 4
  %131 = sub nsw i32 0, %130
  %132 = call %struct.config_group* @ERR_PTR(i32 %131)
  store %struct.config_group* %132, %struct.config_group** %3, align 8
  br label %133

133:                                              ; preds = %127, %124, %11
  %134 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %134
}

declare dso_local %struct.gadget_info* @kzalloc(i32, i32) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

declare dso_local i32 @configfs_add_default_group(%struct.config_group*, %struct.config_group*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @composite_init_dev(%struct.TYPE_8__*) #1

declare dso_local i32 @cpu_to_le16(i32) #1

declare dso_local i32 @get_default_bcdDevice(...) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kstrdup(i8*, i32) #1

declare dso_local i32 @kfree(%struct.gadget_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
