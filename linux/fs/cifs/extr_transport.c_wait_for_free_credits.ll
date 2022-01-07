; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_wait_for_free_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_transport.c_wait_for_free_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { i32, i32, i32, i64, i32, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32* (%struct.TCP_Server_Info*, i32)* }

@MAX_JIFFY_OFFSET = common dso_local global i64 0, align 8
@CIFS_OP_MASK = common dso_local global i32 0, align 4
@CIFS_ECHO_OP = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@CIFS_TIMEOUT_MASK = common dso_local global i32 0, align 4
@CIFS_NON_BLOCKING = common dso_local global i32 0, align 4
@VFS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"wait timed out after %d ms\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@CifsExiting = common dso_local global i64 0, align 8
@ENOENT = common dso_local global i32 0, align 4
@MAX_COMPOUND = common dso_local global i32 0, align 4
@CIFS_BLOCKING_OP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TCP_Server_Info*, i32, i32, i32, i32*)* @wait_for_free_credits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wait_for_free_credits(%struct.TCP_Server_Info* %0, i32 %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TCP_Server_Info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %5
  %19 = load i64, i64* @MAX_JIFFY_OFFSET, align 8
  store i64 %19, i64* %15, align 8
  br label %23

20:                                               ; preds = %5
  %21 = load i32, i32* %9, align 4
  %22 = call i64 @msecs_to_jiffies(i32 %21)
  store i64 %22, i64* %15, align 8
  br label %23

23:                                               ; preds = %20, %18
  %24 = load i32, i32* %10, align 4
  %25 = load i32, i32* @CIFS_OP_MASK, align 4
  %26 = and i32 %24, %25
  store i32 %26, i32* %14, align 4
  %27 = load i32*, i32** %11, align 8
  store i32 0, i32* %27, align 4
  %28 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %29 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %28, i32 0, i32 8
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32* (%struct.TCP_Server_Info*, i32)*, i32* (%struct.TCP_Server_Info*, i32)** %31, align 8
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %34 = load i32, i32* %14, align 4
  %35 = call i32* %32(%struct.TCP_Server_Info* %33, i32 %34)
  store i32* %35, i32** %13, align 8
  %36 = load i32*, i32** %13, align 8
  %37 = load i32, i32* %36, align 4
  %38 = icmp sle i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %23
  %40 = load i32, i32* %14, align 4
  %41 = load i32, i32* @CIFS_ECHO_OP, align 4
  %42 = icmp eq i32 %40, %41
  br i1 %42, label %43, label %46

43:                                               ; preds = %39
  %44 = load i32, i32* @EAGAIN, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %6, align 4
  br label %251

46:                                               ; preds = %39, %23
  %47 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %48 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %47, i32 0, i32 4
  %49 = call i32 @spin_lock(i32* %48)
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @CIFS_TIMEOUT_MASK, align 4
  %52 = and i32 %50, %51
  %53 = load i32, i32* @CIFS_NON_BLOCKING, align 4
  %54 = icmp eq i32 %52, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %46
  %56 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %57 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 8
  %60 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %61 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %64 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp sgt i32 %62, %65
  br i1 %66, label %67, label %73

67:                                               ; preds = %55
  %68 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %69 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %72 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %71, i32 0, i32 1
  store i32 %70, i32* %72, align 4
  br label %73

73:                                               ; preds = %67, %55
  %74 = load i32*, i32** %13, align 8
  %75 = load i32, i32* %74, align 4
  %76 = sub nsw i32 %75, 1
  store i32 %76, i32* %74, align 4
  %77 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %78 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = load i32*, i32** %11, align 8
  store i32 %79, i32* %80, align 4
  %81 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %82 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %81, i32 0, i32 4
  %83 = call i32 @spin_unlock(i32* %82)
  store i32 0, i32* %6, align 4
  br label %251

84:                                               ; preds = %46
  br label %85

85:                                               ; preds = %84, %207, %249
  %86 = load i32*, i32** %13, align 8
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %8, align 4
  %89 = icmp slt i32 %87, %88
  br i1 %89, label %90, label %135

90:                                               ; preds = %85
  %91 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %92 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %91, i32 0, i32 4
  %93 = call i32 @spin_unlock(i32* %92)
  %94 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %95 = call i32 @cifs_num_waiters_inc(%struct.TCP_Server_Info* %94)
  %96 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %97 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %96, i32 0, i32 7
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %100 = load i32*, i32** %13, align 8
  %101 = load i32, i32* %8, align 4
  %102 = call i32 @has_credits(%struct.TCP_Server_Info* %99, i32* %100, i32 %101)
  %103 = load i64, i64* %15, align 8
  %104 = call i32 @wait_event_killable_timeout(i32 %98, i32 %102, i64 %103)
  store i32 %104, i32* %12, align 4
  %105 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %106 = call i32 @cifs_num_waiters_dec(%struct.TCP_Server_Info* %105)
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %123, label %109

109:                                              ; preds = %90
  %110 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %111 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %110, i32 0, i32 6
  %112 = load i32, i32* %111, align 8
  %113 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %114 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %113, i32 0, i32 5
  %115 = load i32, i32* %114, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @trace_smb3_credit_timeout(i32 %112, i32 %115, i32 %116)
  %118 = load i32, i32* @VFS, align 4
  %119 = load i32, i32* %9, align 4
  %120 = call i32 @cifs_server_dbg(i32 %118, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %119)
  %121 = load i32, i32* @ENOTSUPP, align 4
  %122 = sub nsw i32 0, %121
  store i32 %122, i32* %6, align 4
  br label %251

123:                                              ; preds = %90
  %124 = load i32, i32* %12, align 4
  %125 = load i32, i32* @ERESTARTSYS, align 4
  %126 = sub nsw i32 0, %125
  %127 = icmp eq i32 %124, %126
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load i32, i32* @ERESTARTSYS, align 4
  %130 = sub nsw i32 0, %129
  store i32 %130, i32* %6, align 4
  br label %251

131:                                              ; preds = %123
  %132 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %133 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %132, i32 0, i32 4
  %134 = call i32 @spin_lock(i32* %133)
  br label %249

135:                                              ; preds = %85
  %136 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %137 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = load i64, i64* @CifsExiting, align 8
  %140 = icmp eq i64 %138, %139
  br i1 %140, label %141, label %147

141:                                              ; preds = %135
  %142 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %143 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %142, i32 0, i32 4
  %144 = call i32 @spin_unlock(i32* %143)
  %145 = load i32, i32* @ENOENT, align 4
  %146 = sub nsw i32 0, %145
  store i32 %146, i32* %6, align 4
  br label %251

147:                                              ; preds = %135
  %148 = load i32, i32* %14, align 4
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %211, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %8, align 4
  %152 = icmp eq i32 %151, 1
  br i1 %152, label %153, label %211

153:                                              ; preds = %150
  %154 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %155 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %154, i32 0, i32 0
  %156 = load i32, i32* %155, align 8
  %157 = load i32, i32* @MAX_COMPOUND, align 4
  %158 = mul nsw i32 2, %157
  %159 = icmp sgt i32 %156, %158
  br i1 %159, label %160, label %211

160:                                              ; preds = %153
  %161 = load i32*, i32** %13, align 8
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* @MAX_COMPOUND, align 4
  %164 = icmp sle i32 %162, %163
  br i1 %164, label %165, label %211

165:                                              ; preds = %160
  %166 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %167 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %166, i32 0, i32 4
  %168 = call i32 @spin_unlock(i32* %167)
  %169 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %170 = call i32 @cifs_num_waiters_inc(%struct.TCP_Server_Info* %169)
  %171 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %172 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %171, i32 0, i32 7
  %173 = load i32, i32* %172, align 4
  %174 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %175 = load i32*, i32** %13, align 8
  %176 = load i32, i32* @MAX_COMPOUND, align 4
  %177 = add nsw i32 %176, 1
  %178 = call i32 @has_credits(%struct.TCP_Server_Info* %174, i32* %175, i32 %177)
  %179 = load i64, i64* %15, align 8
  %180 = call i32 @wait_event_killable_timeout(i32 %173, i32 %178, i64 %179)
  store i32 %180, i32* %12, align 4
  %181 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %182 = call i32 @cifs_num_waiters_dec(%struct.TCP_Server_Info* %181)
  %183 = load i32, i32* %12, align 4
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %199, label %185

185:                                              ; preds = %165
  %186 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %187 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %186, i32 0, i32 6
  %188 = load i32, i32* %187, align 8
  %189 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %190 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %189, i32 0, i32 5
  %191 = load i32, i32* %190, align 4
  %192 = load i32, i32* %8, align 4
  %193 = call i32 @trace_smb3_credit_timeout(i32 %188, i32 %191, i32 %192)
  %194 = load i32, i32* @VFS, align 4
  %195 = load i32, i32* %9, align 4
  %196 = call i32 @cifs_server_dbg(i32 %194, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %195)
  %197 = load i32, i32* @ENOTSUPP, align 4
  %198 = sub nsw i32 0, %197
  store i32 %198, i32* %6, align 4
  br label %251

199:                                              ; preds = %165
  %200 = load i32, i32* %12, align 4
  %201 = load i32, i32* @ERESTARTSYS, align 4
  %202 = sub nsw i32 0, %201
  %203 = icmp eq i32 %200, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %199
  %205 = load i32, i32* @ERESTARTSYS, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %6, align 4
  br label %251

207:                                              ; preds = %199
  %208 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %209 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %208, i32 0, i32 4
  %210 = call i32 @spin_lock(i32* %209)
  br label %85

211:                                              ; preds = %160, %153, %150, %147
  %212 = load i32, i32* %10, align 4
  %213 = load i32, i32* @CIFS_TIMEOUT_MASK, align 4
  %214 = and i32 %212, %213
  %215 = load i32, i32* @CIFS_BLOCKING_OP, align 4
  %216 = icmp ne i32 %214, %215
  br i1 %216, label %217, label %245

217:                                              ; preds = %211
  %218 = load i32, i32* %8, align 4
  %219 = load i32*, i32** %13, align 8
  %220 = load i32, i32* %219, align 4
  %221 = sub nsw i32 %220, %218
  store i32 %221, i32* %219, align 4
  %222 = load i32, i32* %8, align 4
  %223 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %224 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %223, i32 0, i32 0
  %225 = load i32, i32* %224, align 8
  %226 = add nsw i32 %225, %222
  store i32 %226, i32* %224, align 8
  %227 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %228 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %227, i32 0, i32 0
  %229 = load i32, i32* %228, align 8
  %230 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %231 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %230, i32 0, i32 1
  %232 = load i32, i32* %231, align 4
  %233 = icmp sgt i32 %229, %232
  br i1 %233, label %234, label %240

234:                                              ; preds = %217
  %235 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %236 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %235, i32 0, i32 0
  %237 = load i32, i32* %236, align 8
  %238 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %239 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %238, i32 0, i32 1
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %234, %217
  %241 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %242 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %241, i32 0, i32 2
  %243 = load i32, i32* %242, align 8
  %244 = load i32*, i32** %11, align 8
  store i32 %243, i32* %244, align 4
  br label %245

245:                                              ; preds = %240, %211
  %246 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %7, align 8
  %247 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %246, i32 0, i32 4
  %248 = call i32 @spin_unlock(i32* %247)
  br label %250

249:                                              ; preds = %131
  br label %85

250:                                              ; preds = %245
  store i32 0, i32* %6, align 4
  br label %251

251:                                              ; preds = %250, %204, %185, %141, %128, %109, %73, %43
  %252 = load i32, i32* %6, align 4
  ret i32 %252
}

declare dso_local i64 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @cifs_num_waiters_inc(%struct.TCP_Server_Info*) #1

declare dso_local i32 @wait_event_killable_timeout(i32, i32, i64) #1

declare dso_local i32 @has_credits(%struct.TCP_Server_Info*, i32*, i32) #1

declare dso_local i32 @cifs_num_waiters_dec(%struct.TCP_Server_Info*) #1

declare dso_local i32 @trace_smb3_credit_timeout(i32, i32, i32) #1

declare dso_local i32 @cifs_server_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
