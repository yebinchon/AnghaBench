; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dme_get_attr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/ufs/extr_ufshcd.c_ufshcd_dme_get_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ufs_hba = type { i32, i32, %struct.ufs_pa_layer_attr }
%struct.ufs_pa_layer_attr = type { i64, i64 }
%struct.uic_command = type { i32, i32, i32, i32 }

@ufshcd_dme_get_attr.action = internal constant [2 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [8 x i8] c"dme-get\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"dme-peer-get\00", align 1
@UFS_UIC_COMMAND_RETRIES = common dso_local global i32 0, align 4
@UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE = common dso_local global i32 0, align 4
@FAST_MODE = common dso_local global i64 0, align 8
@FASTAUTO_MODE = common dso_local global i8* null, align 8
@SLOW_MODE = common dso_local global i64 0, align 8
@SLOWAUTO_MODE = common dso_local global i8* null, align 8
@UIC_CMD_DME_PEER_GET = common dso_local global i32 0, align 4
@UIC_CMD_DME_GET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"%s: attr-id 0x%x error code %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [36 x i8] c"%s: attr-id 0x%x failed %d retries\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ufshcd_dme_get_attr(%struct.ufs_hba* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca %struct.ufs_hba*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.uic_command, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.ufs_pa_layer_attr, align 8
  %14 = alloca %struct.ufs_pa_layer_attr, align 8
  %15 = alloca i32, align 4
  store %struct.ufs_hba* %0, %struct.ufs_hba** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i64 %3, i64* %8, align 8
  %16 = bitcast %struct.uic_command* %9 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %16, i8 0, i64 16, i1 false)
  %17 = load i64, i64* %8, align 8
  %18 = icmp ne i64 %17, 0
  %19 = xor i1 %18, true
  %20 = xor i1 %19, true
  %21 = zext i1 %20 to i32
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds [2 x i8*], [2 x i8*]* @ufshcd_dme_get_attr.action, i64 0, i64 %22
  %24 = load i8*, i8** %23, align 8
  store i8* %24, i8** %10, align 8
  %25 = load i32, i32* @UFS_UIC_COMMAND_RETRIES, align 4
  store i32 %25, i32* %12, align 4
  store i32 0, i32* %15, align 4
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %87

28:                                               ; preds = %4
  %29 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %30 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %87

35:                                               ; preds = %28
  %36 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %37 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %36, i32 0, i32 2
  %38 = bitcast %struct.ufs_pa_layer_attr* %13 to i8*
  %39 = bitcast %struct.ufs_pa_layer_attr* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = bitcast %struct.ufs_pa_layer_attr* %14 to i8*
  %41 = bitcast %struct.ufs_pa_layer_attr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %40, i8* align 8 %41, i64 16, i1 false)
  %42 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %13, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = load i64, i64* @FAST_MODE, align 8
  %45 = icmp eq i64 %43, %44
  br i1 %45, label %51, label %46

46:                                               ; preds = %35
  %47 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %13, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @FAST_MODE, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %46, %35
  %52 = load i8*, i8** @FASTAUTO_MODE, align 8
  %53 = ptrtoint i8* %52 to i64
  %54 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %14, i32 0, i32 0
  store i64 %53, i64* %54, align 8
  %55 = load i8*, i8** @FASTAUTO_MODE, align 8
  %56 = ptrtoint i8* %55 to i64
  %57 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %14, i32 0, i32 1
  store i64 %56, i64* %57, align 8
  store i32 1, i32* %15, align 4
  br label %76

58:                                               ; preds = %46
  %59 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %13, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @SLOW_MODE, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %68, label %63

63:                                               ; preds = %58
  %64 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %13, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @SLOW_MODE, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %75

68:                                               ; preds = %63, %58
  %69 = load i8*, i8** @SLOWAUTO_MODE, align 8
  %70 = ptrtoint i8* %69 to i64
  %71 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %14, i32 0, i32 0
  store i64 %70, i64* %71, align 8
  %72 = load i8*, i8** @SLOWAUTO_MODE, align 8
  %73 = ptrtoint i8* %72 to i64
  %74 = getelementptr inbounds %struct.ufs_pa_layer_attr, %struct.ufs_pa_layer_attr* %14, i32 0, i32 1
  store i64 %73, i64* %74, align 8
  store i32 1, i32* %15, align 4
  br label %75

75:                                               ; preds = %68, %63
  br label %76

76:                                               ; preds = %75, %51
  %77 = load i32, i32* %15, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %86

79:                                               ; preds = %76
  %80 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %81 = call i32 @ufshcd_change_power_mode(%struct.ufs_hba* %80, %struct.ufs_pa_layer_attr* %14)
  store i32 %81, i32* %11, align 4
  %82 = load i32, i32* %11, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %79
  br label %167

85:                                               ; preds = %79
  br label %86

86:                                               ; preds = %85, %76
  br label %87

87:                                               ; preds = %86, %28, %4
  %88 = load i64, i64* %8, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %92

90:                                               ; preds = %87
  %91 = load i32, i32* @UIC_CMD_DME_PEER_GET, align 4
  br label %94

92:                                               ; preds = %87
  %93 = load i32, i32* @UIC_CMD_DME_GET, align 4
  br label %94

94:                                               ; preds = %92, %90
  %95 = phi i32 [ %91, %90 ], [ %93, %92 ]
  %96 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %9, i32 0, i32 2
  store i32 %95, i32* %96, align 4
  %97 = load i32, i32* %6, align 4
  %98 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %9, i32 0, i32 1
  store i32 %97, i32* %98, align 4
  br label %99

99:                                               ; preds = %124, %94
  %100 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %101 = call i32 @ufshcd_send_uic_cmd(%struct.ufs_hba* %100, %struct.uic_command* %9)
  store i32 %101, i32* %11, align 4
  %102 = load i32, i32* %11, align 4
  %103 = icmp ne i32 %102, 0
  br i1 %103, label %104, label %113

104:                                              ; preds = %99
  %105 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %106 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %105, i32 0, i32 1
  %107 = load i32, i32* %106, align 4
  %108 = load i8*, i8** %10, align 8
  %109 = load i32, i32* %6, align 4
  %110 = call i32 @UIC_GET_ATTR_ID(i32 %109)
  %111 = load i32, i32* %11, align 4
  %112 = call i32 @dev_dbg(i32 %107, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0), i8* %108, i32 %110, i32 %111)
  br label %113

113:                                              ; preds = %104, %99
  br label %114

114:                                              ; preds = %113
  %115 = load i32, i32* %11, align 4
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %114
  %118 = load i64, i64* %8, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %124

120:                                              ; preds = %117
  %121 = load i32, i32* %12, align 4
  %122 = add nsw i32 %121, -1
  store i32 %122, i32* %12, align 4
  %123 = icmp ne i32 %122, 0
  br label %124

124:                                              ; preds = %120, %117, %114
  %125 = phi i1 [ false, %117 ], [ false, %114 ], [ %123, %120 ]
  br i1 %125, label %99, label %126

126:                                              ; preds = %124
  %127 = load i32, i32* %11, align 4
  %128 = icmp ne i32 %127, 0
  br i1 %128, label %129, label %140

129:                                              ; preds = %126
  %130 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %131 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = load i8*, i8** %10, align 8
  %134 = load i32, i32* %6, align 4
  %135 = call i32 @UIC_GET_ATTR_ID(i32 %134)
  %136 = load i32, i32* @UFS_UIC_COMMAND_RETRIES, align 4
  %137 = load i32, i32* %12, align 4
  %138 = sub nsw i32 %136, %137
  %139 = call i32 @dev_err(i32 %132, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.3, i64 0, i64 0), i8* %133, i32 %135, i32 %138)
  br label %140

140:                                              ; preds = %129, %126
  %141 = load i32*, i32** %7, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %150

143:                                              ; preds = %140
  %144 = load i32, i32* %11, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %150, label %146

146:                                              ; preds = %143
  %147 = getelementptr inbounds %struct.uic_command, %struct.uic_command* %9, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load i32*, i32** %7, align 8
  store i32 %148, i32* %149, align 4
  br label %150

150:                                              ; preds = %146, %143, %140
  %151 = load i64, i64* %8, align 8
  %152 = icmp ne i64 %151, 0
  br i1 %152, label %153, label %166

153:                                              ; preds = %150
  %154 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %155 = getelementptr inbounds %struct.ufs_hba, %struct.ufs_hba* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @UFSHCD_QUIRK_DME_PEER_ACCESS_AUTO_MODE, align 4
  %158 = and i32 %156, %157
  %159 = icmp ne i32 %158, 0
  br i1 %159, label %160, label %166

160:                                              ; preds = %153
  %161 = load i32, i32* %15, align 4
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %163, label %166

163:                                              ; preds = %160
  %164 = load %struct.ufs_hba*, %struct.ufs_hba** %5, align 8
  %165 = call i32 @ufshcd_change_power_mode(%struct.ufs_hba* %164, %struct.ufs_pa_layer_attr* %13)
  br label %166

166:                                              ; preds = %163, %160, %153, %150
  br label %167

167:                                              ; preds = %166, %84
  %168 = load i32, i32* %11, align 4
  ret i32 %168
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @ufshcd_change_power_mode(%struct.ufs_hba*, %struct.ufs_pa_layer_attr*) #2

declare dso_local i32 @ufshcd_send_uic_cmd(%struct.ufs_hba*, %struct.uic_command*) #2

declare dso_local i32 @dev_dbg(i32, i8*, i8*, i32, i32) #2

declare dso_local i32 @UIC_GET_ATTR_ID(i32) #2

declare dso_local i32 @dev_err(i32, i8*, i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
