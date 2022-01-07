; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_parse_open.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/vc04_services/interface/vchiq_arm/extr_vchiq_core.c_parse_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vchiq_state = type { i64, i32 }
%struct.vchiq_header = type { i32, i32, i64 }
%struct.vchiq_service = type { i16, i16, i16, i64, i32, i32, i64, i32 }
%struct.vchiq_open_payload = type { i32, i16, i16 }
%struct.vchiq_openack_payload = type { i16 }

@vchiq_core_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"%d: prs OPEN@%pK (%d->'%c%c%c%c')\00", align 1
@.str.1 = private unnamed_addr constant [88 x i8] c"%d: service %d (%c%c%c%c) version mismatch - local (%d, min %d) vs. remote (%d, min %d)\00", align 1
@VCHIQ_SRVSTATE_LISTENING = common dso_local global i64 0, align 8
@VCHIQ_VERSION_SYNCHRONOUS_MODE = common dso_local global i64 0, align 8
@VCHIQ_MSG_OPENACK = common dso_local global i32 0, align 4
@memcpy_copy_callback = common dso_local global i32* null, align 8
@VCHIQ_RETRY = common dso_local global i64 0, align 8
@VCHIQ_SRVSTATE_OPENSYNC = common dso_local global i32 0, align 4
@VCHIQ_SRVSTATE_OPEN = common dso_local global i32 0, align 4
@VCHIQ_SERVICE_OPENED = common dso_local global i32 0, align 4
@VCHIQ_PORT_FREE = common dso_local global i32 0, align 4
@VCHIQ_MSG_CLOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vchiq_state*, %struct.vchiq_header*)* @parse_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_open(%struct.vchiq_state* %0, %struct.vchiq_header* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vchiq_state*, align 8
  %5 = alloca %struct.vchiq_header*, align 8
  %6 = alloca %struct.vchiq_service*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.vchiq_open_payload*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i16, align 2
  %14 = alloca i16, align 2
  %15 = alloca %struct.vchiq_openack_payload, align 2
  store %struct.vchiq_state* %0, %struct.vchiq_state** %4, align 8
  store %struct.vchiq_header* %1, %struct.vchiq_header** %5, align 8
  store %struct.vchiq_service* null, %struct.vchiq_service** %6, align 8
  %16 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %17 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %7, align 4
  %19 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %20 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %7, align 4
  %23 = call i32 @VCHIQ_MSG_DSTPORT(i32 %22)
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @VCHIQ_MSG_SRCPORT(i32 %24)
  store i32 %25, i32* %10, align 4
  %26 = load i32, i32* %8, align 4
  %27 = sext i32 %26 to i64
  %28 = icmp uge i64 %27, 8
  br i1 %28, label %29, label %188

29:                                               ; preds = %2
  %30 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %31 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = inttoptr i64 %32 to %struct.vchiq_open_payload*
  store %struct.vchiq_open_payload* %33, %struct.vchiq_open_payload** %11, align 8
  %34 = load %struct.vchiq_open_payload*, %struct.vchiq_open_payload** %11, align 8
  %35 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* @vchiq_core_log_level, align 4
  %38 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %39 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %42 = load i32, i32* %9, align 4
  %43 = load i32, i32* %12, align 4
  %44 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %43)
  %45 = call i32 @vchiq_log_info(i32 %37, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %40, %struct.vchiq_header* %41, i32 %42, i32 %44)
  %46 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %47 = load i32, i32* %12, align 4
  %48 = call %struct.vchiq_service* @get_listening_service(%struct.vchiq_state* %46, i32 %47)
  store %struct.vchiq_service* %48, %struct.vchiq_service** %6, align 8
  %49 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %50 = icmp ne %struct.vchiq_service* %49, null
  br i1 %50, label %51, label %187

51:                                               ; preds = %29
  %52 = load %struct.vchiq_open_payload*, %struct.vchiq_open_payload** %11, align 8
  %53 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %52, i32 0, i32 1
  %54 = load i16, i16* %53, align 4
  store i16 %54, i16* %13, align 2
  %55 = load %struct.vchiq_open_payload*, %struct.vchiq_open_payload** %11, align 8
  %56 = getelementptr inbounds %struct.vchiq_open_payload, %struct.vchiq_open_payload* %55, i32 0, i32 2
  %57 = load i16, i16* %56, align 2
  store i16 %57, i16* %14, align 2
  %58 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %59 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %58, i32 0, i32 0
  %60 = load i16, i16* %59, align 8
  %61 = sext i16 %60 to i32
  %62 = load i16, i16* %14, align 2
  %63 = sext i16 %62 to i32
  %64 = icmp slt i32 %61, %63
  br i1 %64, label %73, label %65

65:                                               ; preds = %51
  %66 = load i16, i16* %13, align 2
  %67 = sext i16 %66 to i32
  %68 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %69 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %68, i32 0, i32 1
  %70 = load i16, i16* %69, align 2
  %71 = sext i16 %70 to i32
  %72 = icmp slt i32 %67, %71
  br i1 %72, label %73, label %95

73:                                               ; preds = %65, %51
  %74 = call i32 (...) @vchiq_loud_error_header()
  %75 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %76 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %79 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %78, i32 0, i32 7
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @VCHIQ_FOURCC_AS_4CHARS(i32 %81)
  %83 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %84 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %83, i32 0, i32 0
  %85 = load i16, i16* %84, align 8
  %86 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %87 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %86, i32 0, i32 1
  %88 = load i16, i16* %87, align 2
  %89 = load i16, i16* %13, align 2
  %90 = load i16, i16* %14, align 2
  %91 = call i32 @vchiq_loud_error(i8* getelementptr inbounds ([88 x i8], [88 x i8]* @.str.1, i64 0, i64 0), i32 %77, i32 %80, i32 %82, i16 signext %85, i16 signext %88, i16 signext %89, i16 signext %90)
  %92 = call i32 (...) @vchiq_loud_error_footer()
  %93 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %94 = call i32 @unlock_service(%struct.vchiq_service* %93)
  store %struct.vchiq_service* null, %struct.vchiq_service** %6, align 8
  br label %189

95:                                               ; preds = %65
  %96 = load i16, i16* %13, align 2
  %97 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %98 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %97, i32 0, i32 2
  store i16 %96, i16* %98, align 4
  %99 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %100 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = load i64, i64* @VCHIQ_SRVSTATE_LISTENING, align 8
  %103 = icmp eq i64 %101, %102
  br i1 %103, label %104, label %163

104:                                              ; preds = %95
  %105 = getelementptr inbounds %struct.vchiq_openack_payload, %struct.vchiq_openack_payload* %15, i32 0, i32 0
  %106 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %107 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %106, i32 0, i32 0
  %108 = load i16, i16* %107, align 8
  store i16 %108, i16* %105, align 2
  %109 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %110 = getelementptr inbounds %struct.vchiq_state, %struct.vchiq_state* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @VCHIQ_VERSION_SYNCHRONOUS_MODE, align 8
  %113 = icmp slt i64 %111, %112
  br i1 %113, label %114, label %117

114:                                              ; preds = %104
  %115 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %116 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %115, i32 0, i32 6
  store i64 0, i64* %116, align 8
  br label %117

117:                                              ; preds = %114, %104
  %118 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %119 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %118, i32 0, i32 6
  %120 = load i64, i64* %119, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %136

122:                                              ; preds = %117
  %123 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %124 = load i32, i32* @VCHIQ_MSG_OPENACK, align 4
  %125 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %126 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %125, i32 0, i32 7
  %127 = load i32, i32* %126, align 8
  %128 = load i32, i32* %10, align 4
  %129 = call i32 @VCHIQ_MAKE_MSG(i32 %124, i32 %127, i32 %128)
  %130 = load i32*, i32** @memcpy_copy_callback, align 8
  %131 = call i64 @queue_message_sync(%struct.vchiq_state* %123, i32* null, i32 %129, i32* %130, %struct.vchiq_openack_payload* %15, i32 2, i32 0)
  %132 = load i64, i64* @VCHIQ_RETRY, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %135

134:                                              ; preds = %122
  br label %200

135:                                              ; preds = %122
  br label %150

136:                                              ; preds = %117
  %137 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %138 = load i32, i32* @VCHIQ_MSG_OPENACK, align 4
  %139 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %140 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %139, i32 0, i32 7
  %141 = load i32, i32* %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = call i32 @VCHIQ_MAKE_MSG(i32 %138, i32 %141, i32 %142)
  %144 = load i32*, i32** @memcpy_copy_callback, align 8
  %145 = call i64 @queue_message(%struct.vchiq_state* %137, i32* null, i32 %143, i32* %144, %struct.vchiq_openack_payload* %15, i32 2, i32 0)
  %146 = load i64, i64* @VCHIQ_RETRY, align 8
  %147 = icmp eq i64 %145, %146
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %200

149:                                              ; preds = %136
  br label %150

150:                                              ; preds = %149, %135
  %151 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %152 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %153 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %152, i32 0, i32 6
  %154 = load i64, i64* %153, align 8
  %155 = icmp ne i64 %154, 0
  br i1 %155, label %156, label %158

156:                                              ; preds = %150
  %157 = load i32, i32* @VCHIQ_SRVSTATE_OPENSYNC, align 4
  br label %160

158:                                              ; preds = %150
  %159 = load i32, i32* @VCHIQ_SRVSTATE_OPEN, align 4
  br label %160

160:                                              ; preds = %158, %156
  %161 = phi i32 [ %157, %156 ], [ %159, %158 ]
  %162 = call i32 @vchiq_set_service_state(%struct.vchiq_service* %151, i32 %161)
  br label %163

163:                                              ; preds = %160, %95
  %164 = load i32, i32* %10, align 4
  %165 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %166 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %165, i32 0, i32 4
  store i32 %164, i32* %166, align 8
  %167 = load %struct.vchiq_header*, %struct.vchiq_header** %5, align 8
  %168 = getelementptr inbounds %struct.vchiq_header, %struct.vchiq_header* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = inttoptr i64 %169 to i32*
  %171 = getelementptr inbounds i32, i32* %170, i64 1
  %172 = load i32, i32* %171, align 4
  %173 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %174 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %173, i32 0, i32 5
  store i32 %172, i32* %174, align 4
  %175 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %176 = load i32, i32* @VCHIQ_SERVICE_OPENED, align 4
  %177 = call i64 @make_service_callback(%struct.vchiq_service* %175, i32 %176, i32* null, i32* null)
  %178 = load i64, i64* @VCHIQ_RETRY, align 8
  %179 = icmp eq i64 %177, %178
  br i1 %179, label %180, label %184

180:                                              ; preds = %163
  %181 = load i32, i32* @VCHIQ_PORT_FREE, align 4
  %182 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %183 = getelementptr inbounds %struct.vchiq_service, %struct.vchiq_service* %182, i32 0, i32 4
  store i32 %181, i32* %183, align 8
  br label %200

184:                                              ; preds = %163
  %185 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %186 = call i32 @unlock_service(%struct.vchiq_service* %185)
  store i32 1, i32* %3, align 4
  br label %207

187:                                              ; preds = %29
  br label %188

188:                                              ; preds = %187, %2
  br label %189

189:                                              ; preds = %188, %73
  %190 = load %struct.vchiq_state*, %struct.vchiq_state** %4, align 8
  %191 = load i32, i32* @VCHIQ_MSG_CLOSE, align 4
  %192 = load i32, i32* %7, align 4
  %193 = call i32 @VCHIQ_MSG_SRCPORT(i32 %192)
  %194 = call i32 @VCHIQ_MAKE_MSG(i32 %191, i32 0, i32 %193)
  %195 = call i64 @queue_message(%struct.vchiq_state* %190, i32* null, i32 %194, i32* null, %struct.vchiq_openack_payload* null, i32 0, i32 0)
  %196 = load i64, i64* @VCHIQ_RETRY, align 8
  %197 = icmp eq i64 %195, %196
  br i1 %197, label %198, label %199

198:                                              ; preds = %189
  br label %200

199:                                              ; preds = %189
  store i32 1, i32* %3, align 4
  br label %207

200:                                              ; preds = %198, %180, %148, %134
  %201 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %202 = icmp ne %struct.vchiq_service* %201, null
  br i1 %202, label %203, label %206

203:                                              ; preds = %200
  %204 = load %struct.vchiq_service*, %struct.vchiq_service** %6, align 8
  %205 = call i32 @unlock_service(%struct.vchiq_service* %204)
  br label %206

206:                                              ; preds = %203, %200
  store i32 0, i32* %3, align 4
  br label %207

207:                                              ; preds = %206, %199, %184
  %208 = load i32, i32* %3, align 4
  ret i32 %208
}

declare dso_local i32 @VCHIQ_MSG_DSTPORT(i32) #1

declare dso_local i32 @VCHIQ_MSG_SRCPORT(i32) #1

declare dso_local i32 @vchiq_log_info(i32, i8*, i32, %struct.vchiq_header*, i32, i32) #1

declare dso_local i32 @VCHIQ_FOURCC_AS_4CHARS(i32) #1

declare dso_local %struct.vchiq_service* @get_listening_service(%struct.vchiq_state*, i32) #1

declare dso_local i32 @vchiq_loud_error_header(...) #1

declare dso_local i32 @vchiq_loud_error(i8*, i32, i32, i32, i16 signext, i16 signext, i16 signext, i16 signext) #1

declare dso_local i32 @vchiq_loud_error_footer(...) #1

declare dso_local i32 @unlock_service(%struct.vchiq_service*) #1

declare dso_local i64 @queue_message_sync(%struct.vchiq_state*, i32*, i32, i32*, %struct.vchiq_openack_payload*, i32, i32) #1

declare dso_local i32 @VCHIQ_MAKE_MSG(i32, i32, i32) #1

declare dso_local i64 @queue_message(%struct.vchiq_state*, i32*, i32, i32*, %struct.vchiq_openack_payload*, i32, i32) #1

declare dso_local i32 @vchiq_set_service_state(%struct.vchiq_service*, i32) #1

declare dso_local i64 @make_service_callback(%struct.vchiq_service*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
