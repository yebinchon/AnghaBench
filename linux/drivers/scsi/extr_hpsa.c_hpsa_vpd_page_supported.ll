; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_vpd_page_supported.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_hpsa.c_hpsa_vpd_page_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ctlr_info = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@VPD_PAGE = common dso_local global i32 0, align 4
@HPSA_VPD_SUPPORTED_PAGES = common dso_local global i32 0, align 4
@HPSA_VPD_HEADER_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ctlr_info*, i8*, i8)* @hpsa_vpd_page_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpsa_vpd_page_supported(%struct.ctlr_info* %0, i8* %1, i8 zeroext %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ctlr_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  store %struct.ctlr_info* %0, %struct.ctlr_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8 %2, i8* %7, align 1
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i8* @kzalloc(i32 256, i32 %13)
  store i8* %14, i8** %11, align 8
  %15 = load i8*, i8** %11, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %90

18:                                               ; preds = %3
  %19 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* @VPD_PAGE, align 4
  %22 = load i32, i32* @HPSA_VPD_SUPPORTED_PAGES, align 4
  %23 = or i32 %21, %22
  %24 = load i8*, i8** %11, align 8
  %25 = load i32, i32* @HPSA_VPD_HEADER_SZ, align 4
  %26 = trunc i32 %25 to i8
  %27 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %19, i8* %20, i32 %23, i8* %24, i8 zeroext %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %18
  br label %84

31:                                               ; preds = %18
  %32 = load i8*, i8** %11, align 8
  %33 = getelementptr inbounds i8, i8* %32, i64 3
  %34 = load i8, i8* %33, align 1
  %35 = zext i8 %34 to i32
  store i32 %35, i32* %10, align 4
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* @HPSA_VPD_HEADER_SZ, align 4
  %38 = add nsw i32 %36, %37
  %39 = icmp sle i32 %38, 255
  br i1 %39, label %40, label %45

40:                                               ; preds = %31
  %41 = load i32, i32* %10, align 4
  %42 = load i32, i32* @HPSA_VPD_HEADER_SZ, align 4
  %43 = add nsw i32 %41, %42
  %44 = trunc i32 %43 to i8
  store i8 %44, i8* %12, align 1
  br label %46

45:                                               ; preds = %31
  store i8 -1, i8* %12, align 1
  br label %46

46:                                               ; preds = %45, %40
  %47 = load %struct.ctlr_info*, %struct.ctlr_info** %5, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = load i32, i32* @VPD_PAGE, align 4
  %50 = load i32, i32* @HPSA_VPD_SUPPORTED_PAGES, align 4
  %51 = or i32 %49, %50
  %52 = load i8*, i8** %11, align 8
  %53 = load i8, i8* %12, align 1
  %54 = call i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info* %47, i8* %48, i32 %51, i8* %52, i8 zeroext %53)
  store i32 %54, i32* %8, align 4
  %55 = load i32, i32* %8, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %46
  br label %84

58:                                               ; preds = %46
  %59 = load i8*, i8** %11, align 8
  %60 = getelementptr inbounds i8, i8* %59, i64 3
  %61 = load i8, i8* %60, align 1
  %62 = zext i8 %61 to i32
  store i32 %62, i32* %10, align 4
  store i32 1, i32* %9, align 4
  br label %63

63:                                               ; preds = %80, %58
  %64 = load i32, i32* %9, align 4
  %65 = load i32, i32* %10, align 4
  %66 = icmp sle i32 %64, %65
  br i1 %66, label %67, label %83

67:                                               ; preds = %63
  %68 = load i8*, i8** %11, align 8
  %69 = load i32, i32* %9, align 4
  %70 = add nsw i32 3, %69
  %71 = sext i32 %70 to i64
  %72 = getelementptr inbounds i8, i8* %68, i64 %71
  %73 = load i8, i8* %72, align 1
  %74 = zext i8 %73 to i32
  %75 = load i8, i8* %7, align 1
  %76 = zext i8 %75 to i32
  %77 = icmp eq i32 %74, %76
  br i1 %77, label %78, label %79

78:                                               ; preds = %67
  br label %87

79:                                               ; preds = %67
  br label %80

80:                                               ; preds = %79
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %63

83:                                               ; preds = %63
  br label %84

84:                                               ; preds = %83, %57, %30
  %85 = load i8*, i8** %11, align 8
  %86 = call i32 @kfree(i8* %85)
  store i32 0, i32* %4, align 4
  br label %90

87:                                               ; preds = %78
  %88 = load i8*, i8** %11, align 8
  %89 = call i32 @kfree(i8* %88)
  store i32 1, i32* %4, align 4
  br label %90

90:                                               ; preds = %87, %84, %17
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @hpsa_scsi_do_inquiry(%struct.ctlr_info*, i8*, i32, i8*, i8 zeroext) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
