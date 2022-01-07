; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_verify_fi.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_flash.c_verify_fi.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { i32 }
%struct.esas2r_flash_context = type { i32, %struct.esas2r_flash_img* }
%struct.esas2r_flash_img = type { i32, i64, i64, i64, i8*, %struct.esas2r_component_header* }
%struct.esas2r_component_header = type { i64, i32, i8*, i32 }

@FI_STAT_LENGTH = common dso_local global i8* null, align 8
@FI_AT_UNKNWN = common dso_local global i64 0, align 8
@FI_STAT_ADAPTYP = common dso_local global i8* null, align 8
@CH_STAT_INVALID = common dso_local global i8* null, align 8
@CODE_TYPE_PC = common dso_local global i64 0, align 8
@CODE_TYPE_OPEN = common dso_local global i64 0, align 8
@CODE_TYPE_EFI = common dso_local global i64 0, align 8
@FI_STAT_UNKNOWN = common dso_local global i8* null, align 8
@CH_STAT_PENDING = common dso_local global i8* null, align 8
@FI_STAT_MISSING = common dso_local global i8* null, align 8
@FI_STAT_CHKSUM = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.esas2r_adapter*, %struct.esas2r_flash_context*)* @verify_fi to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @verify_fi(%struct.esas2r_adapter* %0, %struct.esas2r_flash_context* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.esas2r_adapter*, align 8
  %5 = alloca %struct.esas2r_flash_context*, align 8
  %6 = alloca %struct.esas2r_flash_img*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.esas2r_component_header*, align 8
  %12 = alloca i32, align 4
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %4, align 8
  store %struct.esas2r_flash_context* %1, %struct.esas2r_flash_context** %5, align 8
  %13 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %14 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %13, i32 0, i32 1
  %15 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %14, align 8
  store %struct.esas2r_flash_img* %15, %struct.esas2r_flash_img** %6, align 8
  %16 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %17 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %10, align 4
  %19 = load i32, i32* %10, align 4
  %20 = and i32 %19, 1
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %28, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* %10, align 4
  %24 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %25 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = icmp slt i32 %23, %26
  br i1 %27, label %28, label %32

28:                                               ; preds = %22, %2
  %29 = load i8*, i8** @FI_STAT_LENGTH, align 8
  %30 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %31 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %30, i32 0, i32 4
  store i8* %29, i8** %31, align 8
  store i32 0, i32* %3, align 4
  br label %200

32:                                               ; preds = %22
  %33 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %4, align 8
  %34 = call i64 @get_fi_adap_type(%struct.esas2r_adapter* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = load i64, i64* @FI_AT_UNKNWN, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %44, label %38

38:                                               ; preds = %32
  %39 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %40 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* %7, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %48

44:                                               ; preds = %38, %32
  %45 = load i8*, i8** @FI_STAT_ADAPTYP, align 8
  %46 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %47 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %46, i32 0, i32 4
  store i8* %45, i8** %47, align 8
  store i32 0, i32* %3, align 4
  br label %200

48:                                               ; preds = %38
  store i32 0, i32* %8, align 4
  store i64 0, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %49 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %50 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %49, i32 0, i32 5
  %51 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %50, align 8
  store %struct.esas2r_component_header* %51, %struct.esas2r_component_header** %11, align 8
  br label %52

52:                                               ; preds = %162, %48
  %53 = load i64, i64* %9, align 8
  %54 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %55 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp slt i64 %53, %56
  br i1 %57, label %58, label %167

58:                                               ; preds = %52
  store i32 0, i32* %12, align 4
  %59 = load i64, i64* %9, align 8
  %60 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %61 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  store i32 1, i32* %8, align 4
  %65 = load i8*, i8** @CH_STAT_INVALID, align 8
  %66 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %67 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %66, i32 0, i32 2
  store i8* %65, i8** %67, align 8
  br label %162

68:                                               ; preds = %58
  %69 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %70 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  switch i64 %71, label %78 [
    i64 133, label %72
    i64 129, label %74
    i64 131, label %76
  ]

72:                                               ; preds = %68
  %73 = load i64, i64* @CODE_TYPE_PC, align 8
  store i64 %73, i64* %7, align 8
  br label %78

74:                                               ; preds = %68
  %75 = load i64, i64* @CODE_TYPE_OPEN, align 8
  store i64 %75, i64* %7, align 8
  br label %78

76:                                               ; preds = %68
  %77 = load i64, i64* @CODE_TYPE_EFI, align 8
  store i64 %77, i64* %7, align 8
  br label %78

78:                                               ; preds = %68, %76, %74, %72
  %79 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %80 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  switch i64 %81, label %141 [
    i64 130, label %82
    i64 128, label %82
    i64 133, label %83
    i64 129, label %83
    i64 131, label %83
    i64 132, label %113
  ]

82:                                               ; preds = %78, %78
  br label %145

83:                                               ; preds = %78, %78, %78
  %84 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %85 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 8
  %87 = and i32 %86, 511
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %83
  store i32 1, i32* %12, align 4
  br label %90

90:                                               ; preds = %89, %83
  %91 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %92 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %91, i32 0, i32 1
  %93 = load i32, i32* %92, align 8
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %90
  br label %145

96:                                               ; preds = %90
  %97 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %98 = bitcast %struct.esas2r_flash_img* %97 to i64*
  %99 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %100 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %99, i32 0, i32 3
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  %104 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %105 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %104, i32 0, i32 1
  %106 = load i32, i32* %105, align 8
  %107 = sext i32 %106 to i64
  %108 = call i64 @chk_boot(i64* %103, i64 %107)
  %109 = load i64, i64* %7, align 8
  %110 = icmp ne i64 %108, %109
  br i1 %110, label %111, label %112

111:                                              ; preds = %96
  store i32 1, i32* %12, align 4
  br label %112

112:                                              ; preds = %111, %96
  br label %145

113:                                              ; preds = %78
  %114 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %115 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = icmp eq i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %113
  store i32 1, i32* %12, align 4
  br label %145

119:                                              ; preds = %113
  %120 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %121 = bitcast %struct.esas2r_flash_img* %120 to i64*
  %122 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %123 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %122, i32 0, i32 3
  %124 = load i32, i32* %123, align 8
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds i64, i64* %121, i64 %125
  %127 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %128 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 8
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i64, i64* %126, i64 %130
  %132 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %133 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 8
  %135 = sext i32 %134 to i64
  %136 = inttoptr i64 %135 to i64*
  %137 = call i32 @chk_cfg(i64* %131, i64* %136, i32* null)
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %140, label %139

139:                                              ; preds = %119
  store i32 1, i32* %12, align 4
  br label %140

140:                                              ; preds = %139, %119
  br label %145

141:                                              ; preds = %78
  %142 = load i8*, i8** @FI_STAT_UNKNOWN, align 8
  %143 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %144 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %143, i32 0, i32 4
  store i8* %142, i8** %144, align 8
  store i32 0, i32* %3, align 4
  br label %200

145:                                              ; preds = %140, %118, %112, %95, %82
  %146 = load i32, i32* %12, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %152

148:                                              ; preds = %145
  store i32 1, i32* %8, align 4
  %149 = load i8*, i8** @CH_STAT_INVALID, align 8
  %150 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %151 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %150, i32 0, i32 2
  store i8* %149, i8** %151, align 8
  br label %161

152:                                              ; preds = %145
  %153 = load i8*, i8** @CH_STAT_PENDING, align 8
  %154 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %155 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %154, i32 0, i32 2
  store i8* %153, i8** %155, align 8
  %156 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %157 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* %10, align 4
  %160 = add nsw i32 %159, %158
  store i32 %160, i32* %10, align 4
  br label %161

161:                                              ; preds = %152, %148
  br label %162

162:                                              ; preds = %161, %64
  %163 = load i64, i64* %9, align 8
  %164 = add nsw i64 %163, 1
  store i64 %164, i64* %9, align 8
  %165 = load %struct.esas2r_component_header*, %struct.esas2r_component_header** %11, align 8
  %166 = getelementptr inbounds %struct.esas2r_component_header, %struct.esas2r_component_header* %165, i32 1
  store %struct.esas2r_component_header* %166, %struct.esas2r_component_header** %11, align 8
  br label %52

167:                                              ; preds = %52
  %168 = load i32, i32* %8, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %174

170:                                              ; preds = %167
  %171 = load i8*, i8** @FI_STAT_MISSING, align 8
  %172 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %173 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %172, i32 0, i32 4
  store i8* %171, i8** %173, align 8
  store i32 0, i32* %3, align 4
  br label %200

174:                                              ; preds = %167
  %175 = load i32, i32* %10, align 4
  %176 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %177 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %180 = getelementptr inbounds %struct.esas2r_flash_context, %struct.esas2r_flash_context* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = sub nsw i32 %178, %181
  %183 = icmp ne i32 %175, %182
  br i1 %183, label %184, label %188

184:                                              ; preds = %174
  %185 = load i8*, i8** @FI_STAT_LENGTH, align 8
  %186 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %187 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %186, i32 0, i32 4
  store i8* %185, i8** %187, align 8
  store i32 0, i32* %3, align 4
  br label %200

188:                                              ; preds = %174
  %189 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %190 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %189, i32 0, i32 3
  %191 = load i64, i64* %190, align 8
  %192 = load %struct.esas2r_flash_context*, %struct.esas2r_flash_context** %5, align 8
  %193 = call i64 @calc_fi_checksum(%struct.esas2r_flash_context* %192)
  %194 = icmp ne i64 %191, %193
  br i1 %194, label %195, label %199

195:                                              ; preds = %188
  %196 = load i8*, i8** @FI_STAT_CHKSUM, align 8
  %197 = load %struct.esas2r_flash_img*, %struct.esas2r_flash_img** %6, align 8
  %198 = getelementptr inbounds %struct.esas2r_flash_img, %struct.esas2r_flash_img* %197, i32 0, i32 4
  store i8* %196, i8** %198, align 8
  store i32 0, i32* %3, align 4
  br label %200

199:                                              ; preds = %188
  store i32 1, i32* %3, align 4
  br label %200

200:                                              ; preds = %199, %195, %184, %170, %141, %44, %28
  %201 = load i32, i32* %3, align 4
  ret i32 %201
}

declare dso_local i64 @get_fi_adap_type(%struct.esas2r_adapter*) #1

declare dso_local i64 @chk_boot(i64*, i64) #1

declare dso_local i32 @chk_cfg(i64*, i64*, i32*) #1

declare dso_local i64 @calc_fi_checksum(%struct.esas2r_flash_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
