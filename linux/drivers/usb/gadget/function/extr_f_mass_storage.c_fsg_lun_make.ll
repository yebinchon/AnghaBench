; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_make.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_mass_storage.c_fsg_lun_make.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_group = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.fsg_lun_opts = type { i64, %struct.config_group, i64 }
%struct.fsg_opts = type { i32, %struct.TYPE_4__*, i64 }
%struct.TYPE_4__ = type { i64* }
%struct.fsg_lun_config = type { i32 }

@.str = private unnamed_addr constant [34 x i8] c"Unable to locate . in LUN.NUMBER\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@FSG_MAX_LUNS = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@fsg_lun_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_group* (%struct.config_group*, i8*)* @fsg_lun_make to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_group* @fsg_lun_make(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_group*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.fsg_lun_opts*, align 8
  %7 = alloca %struct.fsg_opts*, align 8
  %8 = alloca %struct.fsg_lun_config, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = call i8* @strchr(i8* %12, i8 signext 46)
  store i8* %13, i8** %9, align 8
  %14 = load i8*, i8** %9, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %21, label %16

16:                                               ; preds = %2
  %17 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  %20 = call %struct.config_group* @ERR_PTR(i32 %19)
  store %struct.config_group* %20, %struct.config_group** %3, align 8
  br label %121

21:                                               ; preds = %2
  %22 = load i8*, i8** %9, align 8
  %23 = getelementptr inbounds i8, i8* %22, i32 1
  store i8* %23, i8** %9, align 8
  %24 = load i8*, i8** %9, align 8
  %25 = call i32 @kstrtou8(i8* %24, i32 0, i64* %10)
  store i32 %25, i32* %11, align 4
  %26 = load i32, i32* %11, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.config_group* @ERR_PTR(i32 %29)
  store %struct.config_group* %30, %struct.config_group** %3, align 8
  br label %121

31:                                               ; preds = %21
  %32 = load %struct.config_group*, %struct.config_group** %4, align 8
  %33 = getelementptr inbounds %struct.config_group, %struct.config_group* %32, i32 0, i32 0
  %34 = call %struct.fsg_opts* @to_fsg_opts(%struct.TYPE_3__* %33)
  store %struct.fsg_opts* %34, %struct.fsg_opts** %7, align 8
  %35 = load i64, i64* %10, align 8
  %36 = load i64, i64* @FSG_MAX_LUNS, align 8
  %37 = icmp uge i64 %35, %36
  br i1 %37, label %38, label %42

38:                                               ; preds = %31
  %39 = load i32, i32* @ERANGE, align 4
  %40 = sub nsw i32 0, %39
  %41 = call %struct.config_group* @ERR_PTR(i32 %40)
  store %struct.config_group* %41, %struct.config_group** %3, align 8
  br label %121

42:                                               ; preds = %31
  %43 = load i64, i64* %10, align 8
  %44 = load i64, i64* @FSG_MAX_LUNS, align 8
  %45 = call i64 @array_index_nospec(i64 %43, i64 %44)
  store i64 %45, i64* %10, align 8
  %46 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %47 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %46, i32 0, i32 0
  %48 = call i32 @mutex_lock(i32* %47)
  %49 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %50 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %63, label %53

53:                                               ; preds = %42
  %54 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %55 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %54, i32 0, i32 1
  %56 = load %struct.TYPE_4__*, %struct.TYPE_4__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64*, i64** %57, align 8
  %59 = load i64, i64* %10, align 8
  %60 = getelementptr inbounds i64, i64* %58, i64 %59
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %53, %42
  %64 = load i32, i32* @EBUSY, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %11, align 4
  br label %115

66:                                               ; preds = %53
  %67 = load i32, i32* @GFP_KERNEL, align 4
  %68 = call %struct.fsg_lun_opts* @kzalloc(i32 24, i32 %67)
  store %struct.fsg_lun_opts* %68, %struct.fsg_lun_opts** %6, align 8
  %69 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %6, align 8
  %70 = icmp ne %struct.fsg_lun_opts* %69, null
  br i1 %70, label %74, label %71

71:                                               ; preds = %66
  %72 = load i32, i32* @ENOMEM, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %11, align 4
  br label %115

74:                                               ; preds = %66
  %75 = call i32 @memset(%struct.fsg_lun_config* %8, i32 0, i32 4)
  %76 = getelementptr inbounds %struct.fsg_lun_config, %struct.fsg_lun_config* %8, i32 0, i32 0
  store i32 1, i32* %76, align 4
  %77 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %78 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %77, i32 0, i32 1
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %78, align 8
  %80 = load i64, i64* %10, align 8
  %81 = load i8*, i8** %5, align 8
  %82 = load %struct.config_group*, %struct.config_group** %4, align 8
  %83 = getelementptr inbounds %struct.config_group, %struct.config_group* %82, i32 0, i32 0
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 0
  %85 = bitcast i32* %84 to i8**
  %86 = call i32 @fsg_common_create_lun(%struct.TYPE_4__* %79, %struct.fsg_lun_config* %8, i64 %80, i8* %81, i8** %85)
  store i32 %86, i32* %11, align 4
  %87 = load i32, i32* %11, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %74
  %90 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %6, align 8
  %91 = call i32 @kfree(%struct.fsg_lun_opts* %90)
  br label %115

92:                                               ; preds = %74
  %93 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %94 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64*, i64** %96, align 8
  %98 = load i64, i64* %10, align 8
  %99 = getelementptr inbounds i64, i64* %97, i64 %98
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %6, align 8
  %102 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %101, i32 0, i32 2
  store i64 %100, i64* %102, align 8
  %103 = load i64, i64* %10, align 8
  %104 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %6, align 8
  %105 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %104, i32 0, i32 0
  store i64 %103, i64* %105, align 8
  %106 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %107 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %106, i32 0, i32 0
  %108 = call i32 @mutex_unlock(i32* %107)
  %109 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %6, align 8
  %110 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %109, i32 0, i32 1
  %111 = load i8*, i8** %5, align 8
  %112 = call i32 @config_group_init_type_name(%struct.config_group* %110, i8* %111, i32* @fsg_lun_type)
  %113 = load %struct.fsg_lun_opts*, %struct.fsg_lun_opts** %6, align 8
  %114 = getelementptr inbounds %struct.fsg_lun_opts, %struct.fsg_lun_opts* %113, i32 0, i32 1
  store %struct.config_group* %114, %struct.config_group** %3, align 8
  br label %121

115:                                              ; preds = %89, %71, %63
  %116 = load %struct.fsg_opts*, %struct.fsg_opts** %7, align 8
  %117 = getelementptr inbounds %struct.fsg_opts, %struct.fsg_opts* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load i32, i32* %11, align 4
  %120 = call %struct.config_group* @ERR_PTR(i32 %119)
  store %struct.config_group* %120, %struct.config_group** %3, align 8
  br label %121

121:                                              ; preds = %115, %92, %38, %28, %16
  %122 = load %struct.config_group*, %struct.config_group** %3, align 8
  ret %struct.config_group* %122
}

declare dso_local i8* @strchr(i8*, i8 signext) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local %struct.config_group* @ERR_PTR(i32) #1

declare dso_local i32 @kstrtou8(i8*, i32, i64*) #1

declare dso_local %struct.fsg_opts* @to_fsg_opts(%struct.TYPE_3__*) #1

declare dso_local i64 @array_index_nospec(i64, i64) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.fsg_lun_opts* @kzalloc(i32, i32) #1

declare dso_local i32 @memset(%struct.fsg_lun_config*, i32, i32) #1

declare dso_local i32 @fsg_common_create_lun(%struct.TYPE_4__*, %struct.fsg_lun_config*, i64, i8*, i8**) #1

declare dso_local i32 @kfree(%struct.fsg_lun_opts*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @config_group_init_type_name(%struct.config_group*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
