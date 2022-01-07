; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_setinqstr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aacraid/extr_aachba.c_setinqstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.aac_dev = type { i32, %struct.aac_supplement_adapter_info }
%struct.aac_supplement_adapter_info = type { i64* }
%struct.scsi_inq = type { i8*, i8*, i8* }
%struct.aac_driver_ident = type { i8*, i8* }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"SMC\00", align 1
@container_types = common dso_local global i8** null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"RAID\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"V1.0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.aac_dev*, i8*, i32)* @setinqstr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setinqstr(%struct.aac_dev* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.aac_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_inq*, align 8
  %8 = alloca %struct.aac_supplement_adapter_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i8*, align 8
  %12 = alloca %struct.aac_driver_ident*, align 8
  %13 = alloca i8*, align 8
  store %struct.aac_dev* %0, %struct.aac_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  store i32 %2, i32* %6, align 4
  %14 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %15 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %14, i32 0, i32 1
  store %struct.aac_supplement_adapter_info* %15, %struct.aac_supplement_adapter_info** %8, align 8
  %16 = load i8*, i8** %5, align 8
  %17 = bitcast i8* %16 to %struct.scsi_inq*
  store %struct.scsi_inq* %17, %struct.scsi_inq** %7, align 8
  %18 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %19 = call i32 @memset(%struct.scsi_inq* %18, i8 signext 32, i32 24)
  %20 = load %struct.aac_supplement_adapter_info*, %struct.aac_supplement_adapter_info** %8, align 8
  %21 = getelementptr inbounds %struct.aac_supplement_adapter_info, %struct.aac_supplement_adapter_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = getelementptr inbounds i64, i64* %22, i64 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %133

26:                                               ; preds = %3
  %27 = load %struct.aac_supplement_adapter_info*, %struct.aac_supplement_adapter_info** %8, align 8
  %28 = getelementptr inbounds %struct.aac_supplement_adapter_info, %struct.aac_supplement_adapter_info* %27, i32 0, i32 0
  %29 = load i64*, i64** %28, align 8
  %30 = load i32, i32* @GFP_ATOMIC, align 4
  %31 = call i8* @kmemdup(i64* %29, i32 8, i32 %30)
  store i8* %31, i8** %11, align 8
  %32 = load i8*, i8** %11, align 8
  %33 = icmp ne i8* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %26
  br label %210

35:                                               ; preds = %26
  %36 = load i8*, i8** %11, align 8
  store i8* %36, i8** %10, align 8
  %37 = load i8*, i8** %10, align 8
  %38 = getelementptr inbounds i8, i8* %37, i64 0
  %39 = load i8, i8* %38, align 1
  %40 = sext i8 %39 to i32
  %41 = icmp eq i32 %40, 65
  br i1 %41, label %42, label %59

42:                                               ; preds = %35
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i64 1
  %45 = load i8, i8* %44, align 1
  %46 = sext i8 %45 to i32
  %47 = icmp eq i32 %46, 79
  br i1 %47, label %48, label %59

48:                                               ; preds = %42
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 2
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 67
  br i1 %53, label %54, label %59

54:                                               ; preds = %48
  %55 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %56 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %55, i32 0, i32 0
  %57 = load i8*, i8** %56, align 8
  %58 = call i32 @inqstrcpy(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %57)
  br label %108

59:                                               ; preds = %48, %42, %35
  store i32 8, i32* %9, align 4
  br label %60

60:                                               ; preds = %76, %59
  %61 = load i8*, i8** %10, align 8
  %62 = load i8, i8* %61, align 1
  %63 = sext i8 %62 to i32
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %74

65:                                               ; preds = %60
  %66 = load i8*, i8** %10, align 8
  %67 = load i8, i8* %66, align 1
  %68 = sext i8 %67 to i32
  %69 = icmp ne i32 %68, 32
  br i1 %69, label %70, label %74

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %72, 0
  br label %74

74:                                               ; preds = %70, %65, %60
  %75 = phi i1 [ false, %65 ], [ false, %60 ], [ %73, %70 ]
  br i1 %75, label %76, label %79

76:                                               ; preds = %74
  %77 = load i8*, i8** %10, align 8
  %78 = getelementptr inbounds i8, i8* %77, i32 1
  store i8* %78, i8** %10, align 8
  br label %60

79:                                               ; preds = %74
  %80 = load i8*, i8** %10, align 8
  %81 = load i8, i8* %80, align 1
  %82 = sext i8 %81 to i32
  store i32 %82, i32* %9, align 4
  %83 = load i8*, i8** %10, align 8
  store i8 0, i8* %83, align 1
  %84 = load i8*, i8** %11, align 8
  %85 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %86 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %85, i32 0, i32 0
  %87 = load i8*, i8** %86, align 8
  %88 = call i32 @inqstrcpy(i8* %84, i8* %87)
  %89 = load i32, i32* %9, align 4
  %90 = trunc i32 %89 to i8
  %91 = load i8*, i8** %10, align 8
  store i8 %90, i8* %91, align 1
  br label %92

92:                                               ; preds = %104, %79
  %93 = load i8*, i8** %10, align 8
  %94 = load i8, i8* %93, align 1
  %95 = sext i8 %94 to i32
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %102

97:                                               ; preds = %92
  %98 = load i8*, i8** %10, align 8
  %99 = load i8, i8* %98, align 1
  %100 = sext i8 %99 to i32
  %101 = icmp ne i32 %100, 32
  br label %102

102:                                              ; preds = %97, %92
  %103 = phi i1 [ false, %92 ], [ %101, %97 ]
  br i1 %103, label %104, label %107

104:                                              ; preds = %102
  %105 = load i8*, i8** %10, align 8
  %106 = getelementptr inbounds i8, i8* %105, i32 1
  store i8* %106, i8** %10, align 8
  br label %92

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %107, %54
  br label %109

109:                                              ; preds = %114, %108
  %110 = load i8*, i8** %10, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp eq i32 %112, 32
  br i1 %113, label %114, label %117

114:                                              ; preds = %109
  %115 = load i8*, i8** %10, align 8
  %116 = getelementptr inbounds i8, i8* %115, i32 1
  store i8* %116, i8** %10, align 8
  br label %109

117:                                              ; preds = %109
  %118 = load i8*, i8** %10, align 8
  %119 = call i32 @strlen(i8* %118)
  %120 = sext i32 %119 to i64
  %121 = icmp ugt i64 %120, 8
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i8*, i8** %10, align 8
  %124 = getelementptr inbounds i8, i8* %123, i64 8
  store i8 0, i8* %124, align 1
  br label %125

125:                                              ; preds = %122, %117
  %126 = load i8*, i8** %10, align 8
  %127 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %128 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %127, i32 0, i32 1
  %129 = load i8*, i8** %128, align 8
  %130 = call i32 @inqstrcpy(i8* %126, i8* %129)
  %131 = load i8*, i8** %11, align 8
  %132 = call i32 @kfree(i8* %131)
  br label %152

133:                                              ; preds = %3
  %134 = load %struct.aac_dev*, %struct.aac_dev** %4, align 8
  %135 = getelementptr inbounds %struct.aac_dev, %struct.aac_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = call %struct.aac_driver_ident* @aac_get_driver_ident(i32 %136)
  store %struct.aac_driver_ident* %137, %struct.aac_driver_ident** %12, align 8
  %138 = load %struct.aac_driver_ident*, %struct.aac_driver_ident** %12, align 8
  %139 = getelementptr inbounds %struct.aac_driver_ident, %struct.aac_driver_ident* %138, i32 0, i32 0
  %140 = load i8*, i8** %139, align 8
  %141 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %142 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %141, i32 0, i32 0
  %143 = load i8*, i8** %142, align 8
  %144 = call i32 @inqstrcpy(i8* %140, i8* %143)
  %145 = load %struct.aac_driver_ident*, %struct.aac_driver_ident** %12, align 8
  %146 = getelementptr inbounds %struct.aac_driver_ident, %struct.aac_driver_ident* %145, i32 0, i32 1
  %147 = load i8*, i8** %146, align 8
  %148 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %149 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %148, i32 0, i32 1
  %150 = load i8*, i8** %149, align 8
  %151 = call i32 @inqstrcpy(i8* %147, i8* %150)
  br label %152

152:                                              ; preds = %133, %125
  %153 = load i32, i32* %6, align 4
  %154 = load i8**, i8*** @container_types, align 8
  %155 = call i32 @ARRAY_SIZE(i8** %154)
  %156 = icmp slt i32 %153, %155
  br i1 %156, label %157, label %205

157:                                              ; preds = %152
  %158 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %159 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %158, i32 0, i32 1
  %160 = load i8*, i8** %159, align 8
  store i8* %160, i8** %13, align 8
  br label %161

161:                                              ; preds = %167, %157
  %162 = load i8*, i8** %13, align 8
  %163 = load i8, i8* %162, align 1
  %164 = sext i8 %163 to i32
  %165 = icmp ne i32 %164, 32
  br i1 %165, label %166, label %170

166:                                              ; preds = %161
  br label %167

167:                                              ; preds = %166
  %168 = load i8*, i8** %13, align 8
  %169 = getelementptr inbounds i8, i8* %168, i32 1
  store i8* %169, i8** %13, align 8
  br label %161

170:                                              ; preds = %161
  %171 = load i8*, i8** %13, align 8
  %172 = getelementptr inbounds i8, i8* %171, i64 -4
  %173 = call i64 @memcmp(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 4)
  %174 = icmp eq i64 %173, 0
  br i1 %174, label %175, label %178

175:                                              ; preds = %170
  %176 = load i8*, i8** %13, align 8
  %177 = getelementptr inbounds i8, i8* %176, i64 -4
  store i8* %177, i8** %13, align 8
  store i8 32, i8* %177, align 1
  br label %178

178:                                              ; preds = %175, %170
  %179 = load i8*, i8** %13, align 8
  %180 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %181 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = ptrtoint i8* %179 to i64
  %184 = ptrtoint i8* %182 to i64
  %185 = sub i64 %183, %184
  %186 = load i8**, i8*** @container_types, align 8
  %187 = load i32, i32* %6, align 4
  %188 = sext i32 %187 to i64
  %189 = getelementptr inbounds i8*, i8** %186, i64 %188
  %190 = load i8*, i8** %189, align 8
  %191 = call i32 @strlen(i8* %190)
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %185, %192
  %194 = icmp ult i64 %193, 16
  br i1 %194, label %195, label %204

195:                                              ; preds = %178
  %196 = load i8**, i8*** @container_types, align 8
  %197 = load i32, i32* %6, align 4
  %198 = sext i32 %197 to i64
  %199 = getelementptr inbounds i8*, i8** %196, i64 %198
  %200 = load i8*, i8** %199, align 8
  %201 = load i8*, i8** %13, align 8
  %202 = getelementptr inbounds i8, i8* %201, i64 1
  %203 = call i32 @inqstrcpy(i8* %200, i8* %202)
  br label %204

204:                                              ; preds = %195, %178
  br label %205

205:                                              ; preds = %204, %152
  %206 = load %struct.scsi_inq*, %struct.scsi_inq** %7, align 8
  %207 = getelementptr inbounds %struct.scsi_inq, %struct.scsi_inq* %206, i32 0, i32 2
  %208 = load i8*, i8** %207, align 8
  %209 = call i32 @inqstrcpy(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0), i8* %208)
  br label %210

210:                                              ; preds = %205, %34
  ret void
}

declare dso_local i32 @memset(%struct.scsi_inq*, i8 signext, i32) #1

declare dso_local i8* @kmemdup(i64*, i32, i32) #1

declare dso_local i32 @inqstrcpy(i8*, i8*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @kfree(i8*) #1

declare dso_local %struct.aac_driver_ident* @aac_get_driver_ident(i32) #1

declare dso_local i32 @ARRAY_SIZE(i8**) #1

declare dso_local i64 @memcmp(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
