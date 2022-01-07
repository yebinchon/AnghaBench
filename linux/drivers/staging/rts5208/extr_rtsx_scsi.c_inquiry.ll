; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_inquiry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_scsi.c_inquiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32 }
%struct.rtsx_chip = type { i32*, i64 }

@.str = private unnamed_addr constant [30 x i8] c"Generic-xD/SD/M.S.      1.00 \00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"Generic-SD/MemoryStick  1.00 \00", align 1
@.str.2 = private unnamed_addr constant [30 x i8] c"Generic-SD/MMC          1.00 \00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Generic-MemoryStick     1.00 \00", align 1
@QULIFIRE = common dso_local global i32 0, align 4
@DRCT_ACCESS_DEV = common dso_local global i32 0, align 4
@RMB_DISC = common dso_local global i32 0, align 4
@REL_ADR = common dso_local global i32 0, align 4
@WBUS_32 = common dso_local global i32 0, align 4
@WBUS_16 = common dso_local global i32 0, align 4
@SYNC = common dso_local global i32 0, align 4
@LINKED = common dso_local global i32 0, align 4
@CMD_QUE = common dso_local global i32 0, align 4
@SFT_RE = common dso_local global i32 0, align 4
@SD_MS_2LUN = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@SD_MS_1LUN = common dso_local global i32 0, align 4
@TRANSPORT_ERROR = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@formatter_inquiry_str = common dso_local global i8* null, align 8
@TRANSPORT_GOOD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, %struct.rtsx_chip*)* @inquiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @inquiry(%struct.scsi_cmnd* %0, %struct.rtsx_chip* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca %struct.rtsx_chip*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i8, align 1
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca [8 x i8], align 1
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store %struct.rtsx_chip* %1, %struct.rtsx_chip** %5, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = call i32 @SCSI_LUN(%struct.scsi_cmnd* %17)
  store i32 %18, i32* %6, align 4
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %7, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i8** %8, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.2, i64 0, i64 0), i8** %9, align 8
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0), i8** %10, align 8
  %19 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @get_lun_card(%struct.rtsx_chip* %19, i32 %20)
  store i32 %21, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %22 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %23 = load i32, i32* @QULIFIRE, align 4
  %24 = load i32, i32* @DRCT_ACCESS_DEV, align 4
  %25 = or i32 %23, %24
  %26 = trunc i32 %25 to i8
  store i8 %26, i8* %22, align 1
  %27 = getelementptr inbounds i8, i8* %22, i64 1
  %28 = load i32, i32* @RMB_DISC, align 4
  %29 = or i32 %28, 13
  %30 = trunc i32 %29 to i8
  store i8 %30, i8* %27, align 1
  %31 = getelementptr inbounds i8, i8* %27, i64 1
  store i8 0, i8* %31, align 1
  %32 = getelementptr inbounds i8, i8* %31, i64 1
  store i8 1, i8* %32, align 1
  %33 = getelementptr inbounds i8, i8* %32, i64 1
  store i8 31, i8* %33, align 1
  %34 = getelementptr inbounds i8, i8* %33, i64 1
  store i8 2, i8* %34, align 1
  %35 = getelementptr inbounds i8, i8* %34, i64 1
  store i8 0, i8* %35, align 1
  %36 = getelementptr inbounds i8, i8* %35, i64 1
  %37 = load i32, i32* @REL_ADR, align 4
  %38 = load i32, i32* @WBUS_32, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @WBUS_16, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @SYNC, align 4
  %43 = or i32 %41, %42
  %44 = load i32, i32* @LINKED, align 4
  %45 = or i32 %43, %44
  %46 = load i32, i32* @CMD_QUE, align 4
  %47 = or i32 %45, %46
  %48 = load i32, i32* @SFT_RE, align 4
  %49 = or i32 %47, %48
  %50 = trunc i32 %49 to i8
  store i8 %50, i8* %36, align 1
  %51 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %52 = load i32, i32* @SD_MS_2LUN, align 4
  %53 = call i64 @CHECK_LUN_MODE(%struct.rtsx_chip* %51, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %70

55:                                               ; preds = %2
  %56 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %57 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %56, i32 0, i32 0
  %58 = load i32*, i32** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = zext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @SD_CARD, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %55
  %66 = load i8*, i8** %9, align 8
  store i8* %66, i8** %11, align 8
  br label %69

67:                                               ; preds = %55
  %68 = load i8*, i8** %10, align 8
  store i8* %68, i8** %11, align 8
  br label %69

69:                                               ; preds = %67, %65
  br label %80

70:                                               ; preds = %2
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %72 = load i32, i32* @SD_MS_1LUN, align 4
  %73 = call i64 @CHECK_LUN_MODE(%struct.rtsx_chip* %71, i32 %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %77

75:                                               ; preds = %70
  %76 = load i8*, i8** %8, align 8
  store i8* %76, i8** %11, align 8
  br label %79

77:                                               ; preds = %70
  %78 = load i8*, i8** %7, align 8
  store i8* %78, i8** %11, align 8
  br label %79

79:                                               ; preds = %77, %75
  br label %80

80:                                               ; preds = %79, %69
  %81 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %82 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %81)
  %83 = call i8* @vmalloc(i32 %82)
  store i8* %83, i8** %13, align 8
  %84 = load i8*, i8** %13, align 8
  %85 = icmp ne i8* %84, null
  br i1 %85, label %88, label %86

86:                                               ; preds = %80
  %87 = load i32, i32* @TRANSPORT_ERROR, align 4
  store i32 %87, i32* %3, align 4
  br label %180

88:                                               ; preds = %80
  %89 = load %struct.rtsx_chip*, %struct.rtsx_chip** %5, align 8
  %90 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %89, i32 0, i32 1
  %91 = load i64, i64* %90, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %102

93:                                               ; preds = %88
  %94 = load i32, i32* %14, align 4
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %100

96:                                               ; preds = %93
  %97 = load i32, i32* %14, align 4
  %98 = load i32, i32* @MS_CARD, align 4
  %99 = icmp eq i32 %97, %98
  br i1 %99, label %100, label %101

100:                                              ; preds = %96, %93
  store i32 1, i32* %15, align 4
  br label %101

101:                                              ; preds = %100, %96
  br label %102

102:                                              ; preds = %101, %88
  %103 = load i32, i32* %15, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %115

105:                                              ; preds = %102
  %106 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %107 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %106)
  %108 = icmp slt i32 %107, 56
  br i1 %108, label %109, label %113

109:                                              ; preds = %105
  %110 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %111 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %110)
  %112 = trunc i32 %111 to i8
  store i8 %112, i8* %12, align 1
  br label %114

113:                                              ; preds = %105
  store i8 56, i8* %12, align 1
  br label %114

114:                                              ; preds = %113, %109
  br label %125

115:                                              ; preds = %102
  %116 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %117 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %116)
  %118 = icmp slt i32 %117, 36
  br i1 %118, label %119, label %123

119:                                              ; preds = %115
  %120 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %121 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %120)
  %122 = trunc i32 %121 to i8
  store i8 %122, i8* %12, align 1
  br label %124

123:                                              ; preds = %115
  store i8 36, i8* %12, align 1
  br label %124

124:                                              ; preds = %123, %119
  br label %125

125:                                              ; preds = %124, %114
  %126 = load i8, i8* %12, align 1
  %127 = zext i8 %126 to i32
  %128 = icmp sgt i32 %127, 8
  br i1 %128, label %129, label %147

129:                                              ; preds = %125
  %130 = load i8*, i8** %13, align 8
  %131 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %132 = call i32 @memcpy(i8* %130, i8* %131, i8 zeroext 8)
  %133 = load i8*, i8** %13, align 8
  %134 = getelementptr inbounds i8, i8* %133, i64 8
  %135 = load i8*, i8** %11, align 8
  %136 = load i8, i8* %12, align 1
  %137 = zext i8 %136 to i32
  %138 = sub nsw i32 %137, 8
  %139 = trunc i32 %138 to i8
  %140 = call i32 @strncpy(i8* %134, i8* %135, i8 zeroext %139)
  %141 = load i32, i32* %15, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %146

143:                                              ; preds = %129
  %144 = load i8*, i8** %13, align 8
  %145 = getelementptr inbounds i8, i8* %144, i64 4
  store i8 51, i8* %145, align 1
  br label %146

146:                                              ; preds = %143, %129
  br label %152

147:                                              ; preds = %125
  %148 = load i8*, i8** %13, align 8
  %149 = getelementptr inbounds [8 x i8], [8 x i8]* %16, i64 0, i64 0
  %150 = load i8, i8* %12, align 1
  %151 = call i32 @memcpy(i8* %148, i8* %149, i8 zeroext %150)
  br label %152

152:                                              ; preds = %147, %146
  %153 = load i32, i32* %15, align 4
  %154 = icmp ne i32 %153, 0
  br i1 %154, label %155, label %169

155:                                              ; preds = %152
  %156 = load i8, i8* %12, align 1
  %157 = zext i8 %156 to i32
  %158 = icmp sgt i32 %157, 36
  br i1 %158, label %159, label %168

159:                                              ; preds = %155
  %160 = load i8*, i8** %13, align 8
  %161 = getelementptr inbounds i8, i8* %160, i64 36
  %162 = load i8*, i8** @formatter_inquiry_str, align 8
  %163 = load i8, i8* %12, align 1
  %164 = zext i8 %163 to i32
  %165 = sub nsw i32 %164, 36
  %166 = trunc i32 %165 to i8
  %167 = call i32 @memcpy(i8* %161, i8* %162, i8 zeroext %166)
  br label %168

168:                                              ; preds = %159, %155
  br label %169

169:                                              ; preds = %168, %152
  %170 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %171 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %170, i32 0)
  %172 = load i8*, i8** %13, align 8
  %173 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %174 = call i32 @scsi_bufflen(%struct.scsi_cmnd* %173)
  %175 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %176 = call i32 @rtsx_stor_set_xfer_buf(i8* %172, i32 %174, %struct.scsi_cmnd* %175)
  %177 = load i8*, i8** %13, align 8
  %178 = call i32 @vfree(i8* %177)
  %179 = load i32, i32* @TRANSPORT_GOOD, align 4
  store i32 %179, i32* %3, align 4
  br label %180

180:                                              ; preds = %169, %86
  %181 = load i32, i32* %3, align 4
  ret i32 %181
}

declare dso_local i32 @SCSI_LUN(%struct.scsi_cmnd*) #1

declare dso_local i32 @get_lun_card(%struct.rtsx_chip*, i32) #1

declare dso_local i64 @CHECK_LUN_MODE(%struct.rtsx_chip*, i32) #1

declare dso_local i8* @vmalloc(i32) #1

declare dso_local i32 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i32 @memcpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @strncpy(i8*, i8*, i8 zeroext) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @rtsx_stor_set_xfer_buf(i8*, i32, %struct.scsi_cmnd*) #1

declare dso_local i32 @vfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
