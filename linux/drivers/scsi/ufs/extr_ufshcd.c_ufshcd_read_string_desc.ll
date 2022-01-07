; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_read_string_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_read_string_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32 }
%struct.uc_string_id = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@QUERY_DESC_MAX_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@QUERY_DESC_IDN_STRING = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"Reading String Desc failed after %d retries. err = %d\0A\00", align 1
@QUERY_REQ_RETRIES = common dso_local global i32 0, align 4
@QUERY_DESC_HDR_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [31 x i8] c"String Desc is of zero length\0A\00", align 1
@UTF16_BIG_ENDIAN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_read_string_desc(%struct.ufs_hba* %0, i8 signext %1, i8** %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.ufs_hba*, align 8
  %7 = alloca i8, align 1
  %8 = alloca i8**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.uc_string_id*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %6, align 8
  store i8 %1, i8* %7, align 1
  store i8** %2, i8*** %8, align 8
  store i32 %3, i32* %9, align 4
  %15 = load i8**, i8*** %8, align 8
  %16 = icmp ne i8** %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %136

20:                                               ; preds = %4
  %21 = load i32, i32* @QUERY_DESC_MAX_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kzalloc(i32 %21, i32 %22)
  %24 = bitcast i8* %23 to %struct.uc_string_id*
  store %struct.uc_string_id* %24, %struct.uc_string_id** %10, align 8
  %25 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %26 = icmp ne %struct.uc_string_id* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %20
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %136

30:                                               ; preds = %20
  %31 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %32 = load i32, i32* @QUERY_DESC_IDN_STRING, align 4
  %33 = load i8, i8* %7, align 1
  %34 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %35 = load i32, i32* @QUERY_DESC_MAX_SIZE, align 4
  %36 = call i32 @ufshcd_read_desc(%struct.ufs_hba* %31, i32 %32, i8 signext %33, %struct.uc_string_id* %34, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %30
  %40 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %41 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @QUERY_REQ_RETRIES, align 4
  %44 = load i32, i32* %12, align 4
  %45 = call i32 @dev_err(i32 %42, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %43, i32 %44)
  store i8* null, i8** %11, align 8
  br label %130

46:                                               ; preds = %30
  %47 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %48 = getelementptr inbounds %struct.uc_string_id, %struct.uc_string_id* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @QUERY_DESC_HDR_SIZE, align 4
  %51 = icmp sle i32 %49, %50
  br i1 %51, label %52, label %57

52:                                               ; preds = %46
  %53 = load %struct.ufs_hba*, %struct.ufs_hba** %6, align 8
  %54 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @dev_dbg(i32 %55, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  store i8* null, i8** %11, align 8
  store i32 0, i32* %12, align 4
  br label %130

57:                                               ; preds = %46
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %113

60:                                               ; preds = %57
  %61 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %62 = getelementptr inbounds %struct.uc_string_id, %struct.uc_string_id* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* @QUERY_DESC_HDR_SIZE, align 4
  %65 = sub nsw i32 %63, %64
  %66 = sdiv i32 %65, 2
  %67 = add nsw i32 %66, 1
  store i32 %67, i32* %13, align 4
  %68 = load i32, i32* %13, align 4
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call i8* @kzalloc(i32 %68, i32 %69)
  store i8* %70, i8** %11, align 8
  %71 = load i8*, i8** %11, align 8
  %72 = icmp ne i8* %71, null
  br i1 %72, label %76, label %73

73:                                               ; preds = %60
  %74 = load i32, i32* @ENOMEM, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %12, align 4
  br label %130

76:                                               ; preds = %60
  %77 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %78 = getelementptr inbounds %struct.uc_string_id, %struct.uc_string_id* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %81 = getelementptr inbounds %struct.uc_string_id, %struct.uc_string_id* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @QUERY_DESC_HDR_SIZE, align 4
  %84 = sub nsw i32 %82, %83
  %85 = load i32, i32* @UTF16_BIG_ENDIAN, align 4
  %86 = load i8*, i8** %11, align 8
  %87 = load i32, i32* %13, align 4
  %88 = call i32 @utf16s_to_utf8s(i32 %79, i32 %84, i32 %85, i8* %86, i32 %87)
  store i32 %88, i32* %12, align 4
  store i32 0, i32* %14, align 4
  br label %89

89:                                               ; preds = %104, %76
  %90 = load i32, i32* %14, align 4
  %91 = load i32, i32* %12, align 4
  %92 = icmp slt i32 %90, %91
  br i1 %92, label %93, label %107

93:                                               ; preds = %89
  %94 = load i8*, i8** %11, align 8
  %95 = load i32, i32* %14, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i8, i8* %94, i64 %96
  %98 = load i8, i8* %97, align 1
  %99 = call signext i8 @ufshcd_remove_non_printable(i8 signext %98)
  %100 = load i8*, i8** %11, align 8
  %101 = load i32, i32* %14, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i8, i8* %100, i64 %102
  store i8 %99, i8* %103, align 1
  br label %104

104:                                              ; preds = %93
  %105 = load i32, i32* %14, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %14, align 4
  br label %89

107:                                              ; preds = %89
  %108 = load i8*, i8** %11, align 8
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = sext i32 %109 to i64
  %112 = getelementptr inbounds i8, i8* %108, i64 %111
  store i8 0, i8* %112, align 1
  br label %129

113:                                              ; preds = %57
  %114 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %115 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %116 = getelementptr inbounds %struct.uc_string_id, %struct.uc_string_id* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load i32, i32* @GFP_KERNEL, align 4
  %119 = call i8* @kmemdup(%struct.uc_string_id* %114, i32 %117, i32 %118)
  store i8* %119, i8** %11, align 8
  %120 = load i8*, i8** %11, align 8
  %121 = icmp ne i8* %120, null
  br i1 %121, label %125, label %122

122:                                              ; preds = %113
  %123 = load i32, i32* @ENOMEM, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %12, align 4
  br label %130

125:                                              ; preds = %113
  %126 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %127 = getelementptr inbounds %struct.uc_string_id, %struct.uc_string_id* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  store i32 %128, i32* %12, align 4
  br label %129

129:                                              ; preds = %125, %107
  br label %130

130:                                              ; preds = %129, %122, %73, %52, %39
  %131 = load i8*, i8** %11, align 8
  %132 = load i8**, i8*** %8, align 8
  store i8* %131, i8** %132, align 8
  %133 = load %struct.uc_string_id*, %struct.uc_string_id** %10, align 8
  %134 = call i32 @kfree(%struct.uc_string_id* %133)
  %135 = load i32, i32* %12, align 4
  store i32 %135, i32* %5, align 4
  br label %136

136:                                              ; preds = %130, %27, %17
  %137 = load i32, i32* %5, align 4
  ret i32 %137
}

declare dso_local i8* @kzalloc(i32, i32) #1

declare dso_local i32 @ufshcd_read_desc(%struct.ufs_hba*, i32, i8 signext, %struct.uc_string_id*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @utf16s_to_utf8s(i32, i32, i32, i8*, i32) #1

declare dso_local signext i8 @ufshcd_remove_non_printable(i8 signext) #1

declare dso_local i8* @kmemdup(%struct.uc_string_id*, i32, i32) #1

declare dso_local i32 @kfree(%struct.uc_string_id*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
