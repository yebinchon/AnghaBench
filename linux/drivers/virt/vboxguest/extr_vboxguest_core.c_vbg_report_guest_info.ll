; ModuleID = '/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_report_guest_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/virt/vboxguest/extr_vboxguest_core.c_vbg_report_guest_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vbg_dev = type { i32 }
%struct.vmmdev_guest_info = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.vmmdev_guest_info2 = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@VMMDEVREQ_REPORT_GUEST_INFO = common dso_local global i32 0, align 4
@VBG_KERNEL_REQUEST = common dso_local global i32 0, align 4
@VMMDEVREQ_REPORT_GUEST_INFO2 = common dso_local global i32 0, align 4
@VMMDEV_VERSION = common dso_local global i32 0, align 4
@VMMDEV_OSTYPE_LINUX26 = common dso_local global i32 0, align 4
@VBG_VERSION_MAJOR = common dso_local global i32 0, align 4
@VBG_VERSION_MINOR = common dso_local global i32 0, align 4
@VBG_VERSION_BUILD = common dso_local global i32 0, align 4
@VBG_SVN_REV = common dso_local global i32 0, align 4
@VMMDEV_GUEST_INFO2_ADDITIONS_FEATURES_REQUESTOR_INFO = common dso_local global i32 0, align 4
@VBG_VERSION_STRING = common dso_local global i32 0, align 4
@VERR_NOT_SUPPORTED = common dso_local global i32 0, align 4
@VERR_NOT_IMPLEMENTED = common dso_local global i32 0, align 4
@VINF_SUCCESS = common dso_local global i32 0, align 4
@VMMDEV_OSTYPE_X64 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vbg_dev*)* @vbg_report_guest_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vbg_report_guest_info(%struct.vbg_dev* %0) #0 {
  %2 = alloca %struct.vbg_dev*, align 8
  %3 = alloca %struct.vmmdev_guest_info*, align 8
  %4 = alloca %struct.vmmdev_guest_info2*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.vbg_dev* %0, %struct.vbg_dev** %2, align 8
  store %struct.vmmdev_guest_info* null, %struct.vmmdev_guest_info** %3, align 8
  store %struct.vmmdev_guest_info2* null, %struct.vmmdev_guest_info2** %4, align 8
  %7 = load i32, i32* @ENOMEM, align 4
  %8 = sub nsw i32 0, %7
  store i32 %8, i32* %6, align 4
  %9 = load i32, i32* @VMMDEVREQ_REPORT_GUEST_INFO, align 4
  %10 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %11 = call %struct.vmmdev_guest_info2* @vbg_req_alloc(i32 32, i32 %9, i32 %10)
  %12 = bitcast %struct.vmmdev_guest_info2* %11 to %struct.vmmdev_guest_info*
  store %struct.vmmdev_guest_info* %12, %struct.vmmdev_guest_info** %3, align 8
  %13 = load i32, i32* @VMMDEVREQ_REPORT_GUEST_INFO2, align 4
  %14 = load i32, i32* @VBG_KERNEL_REQUEST, align 4
  %15 = call %struct.vmmdev_guest_info2* @vbg_req_alloc(i32 32, i32 %13, i32 %14)
  store %struct.vmmdev_guest_info2* %15, %struct.vmmdev_guest_info2** %4, align 8
  %16 = load %struct.vmmdev_guest_info*, %struct.vmmdev_guest_info** %3, align 8
  %17 = icmp ne %struct.vmmdev_guest_info* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %1
  %19 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %20 = icmp ne %struct.vmmdev_guest_info2* %19, null
  br i1 %20, label %22, label %21

21:                                               ; preds = %18, %1
  br label %89

22:                                               ; preds = %18
  %23 = load i32, i32* @VMMDEV_VERSION, align 4
  %24 = load %struct.vmmdev_guest_info*, %struct.vmmdev_guest_info** %3, align 8
  %25 = getelementptr inbounds %struct.vmmdev_guest_info, %struct.vmmdev_guest_info* %24, i32 0, i32 7
  store i32 %23, i32* %25, align 4
  %26 = load i32, i32* @VMMDEV_OSTYPE_LINUX26, align 4
  %27 = load %struct.vmmdev_guest_info*, %struct.vmmdev_guest_info** %3, align 8
  %28 = getelementptr inbounds %struct.vmmdev_guest_info, %struct.vmmdev_guest_info* %27, i32 0, i32 6
  store i32 %26, i32* %28, align 4
  %29 = load i32, i32* @VBG_VERSION_MAJOR, align 4
  %30 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %31 = getelementptr inbounds %struct.vmmdev_guest_info2, %struct.vmmdev_guest_info2* %30, i32 0, i32 5
  store i32 %29, i32* %31, align 4
  %32 = load i32, i32* @VBG_VERSION_MINOR, align 4
  %33 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %34 = getelementptr inbounds %struct.vmmdev_guest_info2, %struct.vmmdev_guest_info2* %33, i32 0, i32 4
  store i32 %32, i32* %34, align 4
  %35 = load i32, i32* @VBG_VERSION_BUILD, align 4
  %36 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %37 = getelementptr inbounds %struct.vmmdev_guest_info2, %struct.vmmdev_guest_info2* %36, i32 0, i32 3
  store i32 %35, i32* %37, align 4
  %38 = load i32, i32* @VBG_SVN_REV, align 4
  %39 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %40 = getelementptr inbounds %struct.vmmdev_guest_info2, %struct.vmmdev_guest_info2* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* @VMMDEV_GUEST_INFO2_ADDITIONS_FEATURES_REQUESTOR_INFO, align 4
  %42 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %43 = getelementptr inbounds %struct.vmmdev_guest_info2, %struct.vmmdev_guest_info2* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %45 = getelementptr inbounds %struct.vmmdev_guest_info2, %struct.vmmdev_guest_info2* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* @VBG_VERSION_STRING, align 4
  %48 = call i32 @strlcpy(i32 %46, i32 %47, i32 4)
  %49 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %50 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %51 = call i32 @vbg_req_perform(%struct.vbg_dev* %49, %struct.vmmdev_guest_info2* %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = icmp sge i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %22
  %55 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %56 = load %struct.vmmdev_guest_info*, %struct.vmmdev_guest_info** %3, align 8
  %57 = bitcast %struct.vmmdev_guest_info* %56 to %struct.vmmdev_guest_info2*
  %58 = call i32 @vbg_req_perform(%struct.vbg_dev* %55, %struct.vmmdev_guest_info2* %57)
  store i32 %58, i32* %5, align 4
  br label %86

59:                                               ; preds = %22
  %60 = load i32, i32* %5, align 4
  %61 = load i32, i32* @VERR_NOT_SUPPORTED, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %5, align 4
  %65 = load i32, i32* @VERR_NOT_IMPLEMENTED, align 4
  %66 = icmp eq i32 %64, %65
  br i1 %66, label %67, label %85

67:                                               ; preds = %63, %59
  %68 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %69 = load %struct.vmmdev_guest_info*, %struct.vmmdev_guest_info** %3, align 8
  %70 = bitcast %struct.vmmdev_guest_info* %69 to %struct.vmmdev_guest_info2*
  %71 = call i32 @vbg_req_perform(%struct.vbg_dev* %68, %struct.vmmdev_guest_info2* %70)
  store i32 %71, i32* %5, align 4
  %72 = load i32, i32* %5, align 4
  %73 = icmp sge i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %67
  %75 = load %struct.vbg_dev*, %struct.vbg_dev** %2, align 8
  %76 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %77 = call i32 @vbg_req_perform(%struct.vbg_dev* %75, %struct.vmmdev_guest_info2* %76)
  store i32 %77, i32* %5, align 4
  %78 = load i32, i32* %5, align 4
  %79 = load i32, i32* @VERR_NOT_IMPLEMENTED, align 4
  %80 = icmp eq i32 %78, %79
  br i1 %80, label %81, label %83

81:                                               ; preds = %74
  %82 = load i32, i32* @VINF_SUCCESS, align 4
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %81, %74
  br label %84

84:                                               ; preds = %83, %67
  br label %85

85:                                               ; preds = %84, %63
  br label %86

86:                                               ; preds = %85, %54
  %87 = load i32, i32* %5, align 4
  %88 = call i32 @vbg_status_code_to_errno(i32 %87)
  store i32 %88, i32* %6, align 4
  br label %89

89:                                               ; preds = %86, %21
  %90 = load %struct.vmmdev_guest_info2*, %struct.vmmdev_guest_info2** %4, align 8
  %91 = call i32 @vbg_req_free(%struct.vmmdev_guest_info2* %90, i32 32)
  %92 = load %struct.vmmdev_guest_info*, %struct.vmmdev_guest_info** %3, align 8
  %93 = bitcast %struct.vmmdev_guest_info* %92 to %struct.vmmdev_guest_info2*
  %94 = call i32 @vbg_req_free(%struct.vmmdev_guest_info2* %93, i32 32)
  %95 = load i32, i32* %6, align 4
  ret i32 %95
}

declare dso_local %struct.vmmdev_guest_info2* @vbg_req_alloc(i32, i32, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @vbg_req_perform(%struct.vbg_dev*, %struct.vmmdev_guest_info2*) #1

declare dso_local i32 @vbg_status_code_to_errno(i32) #1

declare dso_local i32 @vbg_req_free(%struct.vmmdev_guest_info2*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
