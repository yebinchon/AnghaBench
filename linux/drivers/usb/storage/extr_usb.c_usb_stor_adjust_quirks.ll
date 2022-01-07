; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_adjust_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/storage/extr_usb.c_usb_stor_adjust_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.usb_device = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@US_FL_SANE_SENSE = common dso_local global i32 0, align 4
@US_FL_BAD_SENSE = common dso_local global i32 0, align 4
@US_FL_FIX_CAPACITY = common dso_local global i32 0, align 4
@US_FL_IGNORE_UAS = common dso_local global i32 0, align 4
@US_FL_CAPACITY_HEURISTICS = common dso_local global i32 0, align 4
@US_FL_IGNORE_DEVICE = common dso_local global i32 0, align 4
@US_FL_NOT_LOCKABLE = common dso_local global i32 0, align 4
@US_FL_MAX_SECTORS_64 = common dso_local global i32 0, align 4
@US_FL_CAPACITY_OK = common dso_local global i32 0, align 4
@US_FL_IGNORE_RESIDUE = common dso_local global i32 0, align 4
@US_FL_SINGLE_LUN = common dso_local global i32 0, align 4
@US_FL_NO_WP_DETECT = common dso_local global i32 0, align 4
@US_FL_NO_READ_DISC_INFO = common dso_local global i32 0, align 4
@US_FL_NO_READ_CAPACITY_16 = common dso_local global i32 0, align 4
@US_FL_INITIAL_READ10 = common dso_local global i32 0, align 4
@US_FL_WRITE_CACHE = common dso_local global i32 0, align 4
@US_FL_NO_ATA_1X = common dso_local global i32 0, align 4
@US_FL_NO_REPORT_OPCODES = common dso_local global i32 0, align 4
@US_FL_MAX_SECTORS_240 = common dso_local global i32 0, align 4
@US_FL_NO_REPORT_LUNS = common dso_local global i32 0, align 4
@US_FL_ALWAYS_SYNC = common dso_local global i32 0, align 4
@quirks = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @usb_stor_adjust_quirks(%struct.usb_device* %0, i64* %1) #0 {
  %3 = alloca %struct.usb_device*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.usb_device* %0, %struct.usb_device** %3, align 8
  store i64* %1, i64** %4, align 8
  %10 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %11 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i64 @le16_to_cpu(i32 %13)
  store i64 %14, i64* %6, align 8
  %15 = load %struct.usb_device*, %struct.usb_device** %3, align 8
  %16 = getelementptr inbounds %struct.usb_device, %struct.usb_device* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @le16_to_cpu(i32 %18)
  store i64 %19, i64* %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %21 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %22 = or i32 %20, %21
  %23 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @US_FL_IGNORE_UAS, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @US_FL_CAPACITY_HEURISTICS, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @US_FL_IGNORE_DEVICE, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @US_FL_NOT_LOCKABLE, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* @US_FL_MAX_SECTORS_64, align 4
  %34 = or i32 %32, %33
  %35 = load i32, i32* @US_FL_CAPACITY_OK, align 4
  %36 = or i32 %34, %35
  %37 = load i32, i32* @US_FL_IGNORE_RESIDUE, align 4
  %38 = or i32 %36, %37
  %39 = load i32, i32* @US_FL_SINGLE_LUN, align 4
  %40 = or i32 %38, %39
  %41 = load i32, i32* @US_FL_NO_WP_DETECT, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* @US_FL_NO_READ_DISC_INFO, align 4
  %44 = or i32 %42, %43
  %45 = load i32, i32* @US_FL_NO_READ_CAPACITY_16, align 4
  %46 = or i32 %44, %45
  %47 = load i32, i32* @US_FL_INITIAL_READ10, align 4
  %48 = or i32 %46, %47
  %49 = load i32, i32* @US_FL_WRITE_CACHE, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @US_FL_NO_ATA_1X, align 4
  %52 = or i32 %50, %51
  %53 = load i32, i32* @US_FL_NO_REPORT_OPCODES, align 4
  %54 = or i32 %52, %53
  %55 = load i32, i32* @US_FL_MAX_SECTORS_240, align 4
  %56 = or i32 %54, %55
  %57 = load i32, i32* @US_FL_NO_REPORT_LUNS, align 4
  %58 = or i32 %56, %57
  %59 = load i32, i32* @US_FL_ALWAYS_SYNC, align 4
  %60 = or i32 %58, %59
  store i32 %60, i32* %9, align 4
  %61 = load i8*, i8** @quirks, align 8
  store i8* %61, i8** %5, align 8
  br label %62

62:                                               ; preds = %101, %2
  %63 = load i8*, i8** %5, align 8
  %64 = load i8, i8* %63, align 1
  %65 = icmp ne i8 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %62
  %67 = load i64, i64* %6, align 8
  %68 = load i8*, i8** %5, align 8
  %69 = call i64 @simple_strtoul(i8* %68, i8** %5, i32 16)
  %70 = icmp eq i64 %67, %69
  br i1 %70, label %71, label %88

71:                                               ; preds = %66
  %72 = load i8*, i8** %5, align 8
  %73 = load i8, i8* %72, align 1
  %74 = sext i8 %73 to i32
  %75 = icmp eq i32 %74, 58
  br i1 %75, label %76, label %88

76:                                               ; preds = %71
  %77 = load i64, i64* %7, align 8
  %78 = load i8*, i8** %5, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 1
  %80 = call i64 @simple_strtoul(i8* %79, i8** %5, i32 16)
  %81 = icmp eq i64 %77, %80
  br i1 %81, label %82, label %88

82:                                               ; preds = %76
  %83 = load i8*, i8** %5, align 8
  %84 = load i8, i8* %83, align 1
  %85 = sext i8 %84 to i32
  %86 = icmp eq i32 %85, 58
  br i1 %86, label %87, label %88

87:                                               ; preds = %82
  br label %102

88:                                               ; preds = %82, %76, %71, %66
  br label %89

89:                                               ; preds = %100, %88
  %90 = load i8*, i8** %5, align 8
  %91 = load i8, i8* %90, align 1
  %92 = icmp ne i8 %91, 0
  br i1 %92, label %93, label %101

93:                                               ; preds = %89
  %94 = load i8*, i8** %5, align 8
  %95 = getelementptr inbounds i8, i8* %94, i32 1
  store i8* %95, i8** %5, align 8
  %96 = load i8, i8* %94, align 1
  %97 = sext i8 %96 to i32
  %98 = icmp eq i32 %97, 44
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %101

100:                                              ; preds = %93
  br label %89

101:                                              ; preds = %99, %89
  br label %62

102:                                              ; preds = %87, %62
  %103 = load i8*, i8** %5, align 8
  %104 = load i8, i8* %103, align 1
  %105 = icmp ne i8 %104, 0
  br i1 %105, label %107, label %106

106:                                              ; preds = %102
  br label %221

107:                                              ; preds = %102
  br label %108

108:                                              ; preds = %209, %107
  %109 = load i8*, i8** %5, align 8
  %110 = getelementptr inbounds i8, i8* %109, i32 1
  store i8* %110, i8** %5, align 8
  %111 = load i8, i8* %110, align 1
  %112 = sext i8 %111 to i32
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %119

114:                                              ; preds = %108
  %115 = load i8*, i8** %5, align 8
  %116 = load i8, i8* %115, align 1
  %117 = sext i8 %116 to i32
  %118 = icmp ne i32 %117, 44
  br label %119

119:                                              ; preds = %114, %108
  %120 = phi i1 [ false, %108 ], [ %118, %114 ]
  br i1 %120, label %121, label %210

121:                                              ; preds = %119
  %122 = load i8*, i8** %5, align 8
  %123 = load i8, i8* %122, align 1
  %124 = call i32 @TOLOWER(i8 signext %123)
  switch i32 %124, label %209 [
    i32 97, label %125
    i32 98, label %129
    i32 99, label %133
    i32 100, label %137
    i32 101, label %141
    i32 102, label %145
    i32 103, label %149
    i32 104, label %153
    i32 105, label %157
    i32 106, label %161
    i32 108, label %165
    i32 109, label %169
    i32 110, label %173
    i32 111, label %177
    i32 112, label %181
    i32 114, label %185
    i32 115, label %189
    i32 116, label %193
    i32 117, label %197
    i32 119, label %201
    i32 121, label %205
  ]

125:                                              ; preds = %121
  %126 = load i32, i32* @US_FL_SANE_SENSE, align 4
  %127 = load i32, i32* %8, align 4
  %128 = or i32 %127, %126
  store i32 %128, i32* %8, align 4
  br label %209

129:                                              ; preds = %121
  %130 = load i32, i32* @US_FL_BAD_SENSE, align 4
  %131 = load i32, i32* %8, align 4
  %132 = or i32 %131, %130
  store i32 %132, i32* %8, align 4
  br label %209

133:                                              ; preds = %121
  %134 = load i32, i32* @US_FL_FIX_CAPACITY, align 4
  %135 = load i32, i32* %8, align 4
  %136 = or i32 %135, %134
  store i32 %136, i32* %8, align 4
  br label %209

137:                                              ; preds = %121
  %138 = load i32, i32* @US_FL_NO_READ_DISC_INFO, align 4
  %139 = load i32, i32* %8, align 4
  %140 = or i32 %139, %138
  store i32 %140, i32* %8, align 4
  br label %209

141:                                              ; preds = %121
  %142 = load i32, i32* @US_FL_NO_READ_CAPACITY_16, align 4
  %143 = load i32, i32* %8, align 4
  %144 = or i32 %143, %142
  store i32 %144, i32* %8, align 4
  br label %209

145:                                              ; preds = %121
  %146 = load i32, i32* @US_FL_NO_REPORT_OPCODES, align 4
  %147 = load i32, i32* %8, align 4
  %148 = or i32 %147, %146
  store i32 %148, i32* %8, align 4
  br label %209

149:                                              ; preds = %121
  %150 = load i32, i32* @US_FL_MAX_SECTORS_240, align 4
  %151 = load i32, i32* %8, align 4
  %152 = or i32 %151, %150
  store i32 %152, i32* %8, align 4
  br label %209

153:                                              ; preds = %121
  %154 = load i32, i32* @US_FL_CAPACITY_HEURISTICS, align 4
  %155 = load i32, i32* %8, align 4
  %156 = or i32 %155, %154
  store i32 %156, i32* %8, align 4
  br label %209

157:                                              ; preds = %121
  %158 = load i32, i32* @US_FL_IGNORE_DEVICE, align 4
  %159 = load i32, i32* %8, align 4
  %160 = or i32 %159, %158
  store i32 %160, i32* %8, align 4
  br label %209

161:                                              ; preds = %121
  %162 = load i32, i32* @US_FL_NO_REPORT_LUNS, align 4
  %163 = load i32, i32* %8, align 4
  %164 = or i32 %163, %162
  store i32 %164, i32* %8, align 4
  br label %209

165:                                              ; preds = %121
  %166 = load i32, i32* @US_FL_NOT_LOCKABLE, align 4
  %167 = load i32, i32* %8, align 4
  %168 = or i32 %167, %166
  store i32 %168, i32* %8, align 4
  br label %209

169:                                              ; preds = %121
  %170 = load i32, i32* @US_FL_MAX_SECTORS_64, align 4
  %171 = load i32, i32* %8, align 4
  %172 = or i32 %171, %170
  store i32 %172, i32* %8, align 4
  br label %209

173:                                              ; preds = %121
  %174 = load i32, i32* @US_FL_INITIAL_READ10, align 4
  %175 = load i32, i32* %8, align 4
  %176 = or i32 %175, %174
  store i32 %176, i32* %8, align 4
  br label %209

177:                                              ; preds = %121
  %178 = load i32, i32* @US_FL_CAPACITY_OK, align 4
  %179 = load i32, i32* %8, align 4
  %180 = or i32 %179, %178
  store i32 %180, i32* %8, align 4
  br label %209

181:                                              ; preds = %121
  %182 = load i32, i32* @US_FL_WRITE_CACHE, align 4
  %183 = load i32, i32* %8, align 4
  %184 = or i32 %183, %182
  store i32 %184, i32* %8, align 4
  br label %209

185:                                              ; preds = %121
  %186 = load i32, i32* @US_FL_IGNORE_RESIDUE, align 4
  %187 = load i32, i32* %8, align 4
  %188 = or i32 %187, %186
  store i32 %188, i32* %8, align 4
  br label %209

189:                                              ; preds = %121
  %190 = load i32, i32* @US_FL_SINGLE_LUN, align 4
  %191 = load i32, i32* %8, align 4
  %192 = or i32 %191, %190
  store i32 %192, i32* %8, align 4
  br label %209

193:                                              ; preds = %121
  %194 = load i32, i32* @US_FL_NO_ATA_1X, align 4
  %195 = load i32, i32* %8, align 4
  %196 = or i32 %195, %194
  store i32 %196, i32* %8, align 4
  br label %209

197:                                              ; preds = %121
  %198 = load i32, i32* @US_FL_IGNORE_UAS, align 4
  %199 = load i32, i32* %8, align 4
  %200 = or i32 %199, %198
  store i32 %200, i32* %8, align 4
  br label %209

201:                                              ; preds = %121
  %202 = load i32, i32* @US_FL_NO_WP_DETECT, align 4
  %203 = load i32, i32* %8, align 4
  %204 = or i32 %203, %202
  store i32 %204, i32* %8, align 4
  br label %209

205:                                              ; preds = %121
  %206 = load i32, i32* @US_FL_ALWAYS_SYNC, align 4
  %207 = load i32, i32* %8, align 4
  %208 = or i32 %207, %206
  store i32 %208, i32* %8, align 4
  br label %209

209:                                              ; preds = %121, %205, %201, %197, %193, %189, %185, %181, %177, %173, %169, %165, %161, %157, %153, %149, %145, %141, %137, %133, %129, %125
  br label %108

210:                                              ; preds = %119
  %211 = load i64*, i64** %4, align 8
  %212 = load i64, i64* %211, align 8
  %213 = load i32, i32* %9, align 4
  %214 = xor i32 %213, -1
  %215 = zext i32 %214 to i64
  %216 = and i64 %212, %215
  %217 = load i32, i32* %8, align 4
  %218 = zext i32 %217 to i64
  %219 = or i64 %216, %218
  %220 = load i64*, i64** %4, align 8
  store i64 %219, i64* %220, align 8
  br label %221

221:                                              ; preds = %210, %106
  ret void
}

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i32 @TOLOWER(i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
