; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_setterm_command.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_setterm_command.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vc_data = type { i32*, i32, i32, i32, i32, i32, i32, i32, i32, i8*, i32, i32, i8* }

@color_table = common dso_local global i8** null, align 8
@blankinterval = common dso_local global i32 0, align 4
@DEFAULT_BELL_PITCH = common dso_local global i32 0, align 4
@DEFAULT_BELL_DURATION = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@vesa_off_interval = common dso_local global i32 0, align 4
@last_console = common dso_local global i32 0, align 4
@USHRT_MAX = common dso_local global i32 0, align 4
@DEFAULT_CURSOR_BLINK_MS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vc_data*)* @setterm_command to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @setterm_command(%struct.vc_data* %0) #0 {
  %2 = alloca %struct.vc_data*, align 8
  store %struct.vc_data* %0, %struct.vc_data** %2, align 8
  %3 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %4 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %3, i32 0, i32 0
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  switch i32 %7, label %241 [
    i32 1, label %8
    i32 2, label %41
    i32 8, label %74
    i32 9, label %94
    i32 10, label %112
    i32 11, label %130
    i32 12, label %159
    i32 13, label %184
    i32 14, label %186
    i32 15, label %205
    i32 16, label %208
  ]

8:                                                ; preds = %1
  %9 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %10 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %9, i32 0, i32 10
  %11 = load i32, i32* %10, align 8
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %40

13:                                               ; preds = %8
  %14 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %15 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 1
  %18 = load i32, i32* %17, align 4
  %19 = icmp slt i32 %18, 16
  br i1 %19, label %20, label %40

20:                                               ; preds = %13
  %21 = load i8**, i8*** @color_table, align 8
  %22 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %23 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 1
  %26 = load i32, i32* %25, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds i8*, i8** %21, i64 %27
  %29 = load i8*, i8** %28, align 8
  %30 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %31 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %30, i32 0, i32 12
  store i8* %29, i8** %31, align 8
  %32 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %33 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %32, i32 0, i32 11
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %20
  %37 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %38 = call i32 @update_attr(%struct.vc_data* %37)
  br label %39

39:                                               ; preds = %36, %20
  br label %40

40:                                               ; preds = %39, %13, %8
  br label %241

41:                                               ; preds = %1
  %42 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %43 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %42, i32 0, i32 10
  %44 = load i32, i32* %43, align 8
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %73

46:                                               ; preds = %41
  %47 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %48 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  %51 = load i32, i32* %50, align 4
  %52 = icmp slt i32 %51, 16
  br i1 %52, label %53, label %73

53:                                               ; preds = %46
  %54 = load i8**, i8*** @color_table, align 8
  %55 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %56 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %55, i32 0, i32 0
  %57 = load i32*, i32** %56, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 1
  %59 = load i32, i32* %58, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i8*, i8** %54, i64 %60
  %62 = load i8*, i8** %61, align 8
  %63 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %64 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %63, i32 0, i32 9
  store i8* %62, i8** %64, align 8
  %65 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %66 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %65, i32 0, i32 8
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %53
  %70 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %71 = call i32 @update_attr(%struct.vc_data* %70)
  br label %72

72:                                               ; preds = %69, %53
  br label %73

73:                                               ; preds = %72, %46, %41
  br label %241

74:                                               ; preds = %1
  %75 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %76 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %75, i32 0, i32 2
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %79 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %78, i32 0, i32 1
  store i32 %77, i32* %79, align 8
  %80 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %81 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %80, i32 0, i32 3
  %82 = load i32, i32* %81, align 8
  %83 = icmp eq i32 %82, 256
  br i1 %83, label %84, label %89

84:                                               ; preds = %74
  %85 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %86 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = ashr i32 %87, 1
  store i32 %88, i32* %86, align 8
  br label %89

89:                                               ; preds = %84, %74
  %90 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %91 = call i32 @default_attr(%struct.vc_data* %90)
  %92 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %93 = call i32 @update_attr(%struct.vc_data* %92)
  br label %241

94:                                               ; preds = %1
  %95 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %96 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 1
  %99 = load i32, i32* %98, align 4
  %100 = icmp slt i32 %99, 60
  br i1 %100, label %101, label %107

101:                                              ; preds = %94
  %102 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %103 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %102, i32 0, i32 0
  %104 = load i32*, i32** %103, align 8
  %105 = getelementptr inbounds i32, i32* %104, i64 1
  %106 = load i32, i32* %105, align 4
  br label %108

107:                                              ; preds = %94
  br label %108

108:                                              ; preds = %107, %101
  %109 = phi i32 [ %106, %101 ], [ 60, %107 ]
  %110 = mul nsw i32 %109, 60
  store i32 %110, i32* @blankinterval, align 4
  %111 = call i32 (...) @poke_blanked_console()
  br label %241

112:                                              ; preds = %1
  %113 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %114 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 4
  %116 = icmp sge i32 %115, 1
  br i1 %116, label %117, label %125

117:                                              ; preds = %112
  %118 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %119 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %118, i32 0, i32 0
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 1
  %122 = load i32, i32* %121, align 4
  %123 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %124 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %123, i32 0, i32 5
  store i32 %122, i32* %124, align 8
  br label %129

125:                                              ; preds = %112
  %126 = load i32, i32* @DEFAULT_BELL_PITCH, align 4
  %127 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %128 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %127, i32 0, i32 5
  store i32 %126, i32* %128, align 8
  br label %129

129:                                              ; preds = %125, %117
  br label %241

130:                                              ; preds = %1
  %131 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %132 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %131, i32 0, i32 4
  %133 = load i32, i32* %132, align 4
  %134 = icmp sge i32 %133, 1
  br i1 %134, label %135, label %154

135:                                              ; preds = %130
  %136 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %137 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %136, i32 0, i32 0
  %138 = load i32*, i32** %137, align 8
  %139 = getelementptr inbounds i32, i32* %138, i64 1
  %140 = load i32, i32* %139, align 4
  %141 = icmp slt i32 %140, 2000
  br i1 %141, label %142, label %149

142:                                              ; preds = %135
  %143 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %144 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = getelementptr inbounds i32, i32* %145, i64 1
  %147 = load i32, i32* %146, align 4
  %148 = call i32 @msecs_to_jiffies(i32 %147)
  br label %150

149:                                              ; preds = %135
  br label %150

150:                                              ; preds = %149, %142
  %151 = phi i32 [ %148, %142 ], [ 0, %149 ]
  %152 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %153 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %152, i32 0, i32 7
  store i32 %151, i32* %153, align 8
  br label %158

154:                                              ; preds = %130
  %155 = load i32, i32* @DEFAULT_BELL_DURATION, align 4
  %156 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %157 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %156, i32 0, i32 7
  store i32 %155, i32* %157, align 8
  br label %158

158:                                              ; preds = %154, %150
  br label %241

159:                                              ; preds = %1
  %160 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %161 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %160, i32 0, i32 0
  %162 = load i32*, i32** %161, align 8
  %163 = getelementptr inbounds i32, i32* %162, i64 1
  %164 = load i32, i32* %163, align 4
  %165 = icmp sge i32 %164, 1
  br i1 %165, label %166, label %183

166:                                              ; preds = %159
  %167 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %168 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %167, i32 0, i32 0
  %169 = load i32*, i32** %168, align 8
  %170 = getelementptr inbounds i32, i32* %169, i64 1
  %171 = load i32, i32* %170, align 4
  %172 = sub nsw i32 %171, 1
  %173 = call i32 @vc_cons_allocated(i32 %172)
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %175, label %183

175:                                              ; preds = %166
  %176 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %177 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %176, i32 0, i32 0
  %178 = load i32*, i32** %177, align 8
  %179 = getelementptr inbounds i32, i32* %178, i64 1
  %180 = load i32, i32* %179, align 4
  %181 = sub nsw i32 %180, 1
  %182 = call i32 @set_console(i32 %181)
  br label %183

183:                                              ; preds = %175, %166, %159
  br label %241

184:                                              ; preds = %1
  %185 = call i32 (...) @poke_blanked_console()
  br label %241

186:                                              ; preds = %1
  %187 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %188 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %187, i32 0, i32 0
  %189 = load i32*, i32** %188, align 8
  %190 = getelementptr inbounds i32, i32* %189, i64 1
  %191 = load i32, i32* %190, align 4
  %192 = icmp slt i32 %191, 60
  br i1 %192, label %193, label %199

193:                                              ; preds = %186
  %194 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %195 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %194, i32 0, i32 0
  %196 = load i32*, i32** %195, align 8
  %197 = getelementptr inbounds i32, i32* %196, i64 1
  %198 = load i32, i32* %197, align 4
  br label %200

199:                                              ; preds = %186
  br label %200

200:                                              ; preds = %199, %193
  %201 = phi i32 [ %198, %193 ], [ 60, %199 ]
  %202 = mul nsw i32 %201, 60
  %203 = load i32, i32* @HZ, align 4
  %204 = mul nsw i32 %202, %203
  store i32 %204, i32* @vesa_off_interval, align 4
  br label %241

205:                                              ; preds = %1
  %206 = load i32, i32* @last_console, align 4
  %207 = call i32 @set_console(i32 %206)
  br label %241

208:                                              ; preds = %1
  %209 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %210 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %209, i32 0, i32 4
  %211 = load i32, i32* %210, align 4
  %212 = icmp sge i32 %211, 1
  br i1 %212, label %213, label %236

213:                                              ; preds = %208
  %214 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %215 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %214, i32 0, i32 0
  %216 = load i32*, i32** %215, align 8
  %217 = getelementptr inbounds i32, i32* %216, i64 1
  %218 = load i32, i32* %217, align 4
  %219 = icmp sge i32 %218, 50
  br i1 %219, label %220, label %236

220:                                              ; preds = %213
  %221 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %222 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %221, i32 0, i32 0
  %223 = load i32*, i32** %222, align 8
  %224 = getelementptr inbounds i32, i32* %223, i64 1
  %225 = load i32, i32* %224, align 4
  %226 = load i32, i32* @USHRT_MAX, align 4
  %227 = icmp sle i32 %225, %226
  br i1 %227, label %228, label %236

228:                                              ; preds = %220
  %229 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %230 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %229, i32 0, i32 0
  %231 = load i32*, i32** %230, align 8
  %232 = getelementptr inbounds i32, i32* %231, i64 1
  %233 = load i32, i32* %232, align 4
  %234 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %235 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %234, i32 0, i32 6
  store i32 %233, i32* %235, align 4
  br label %240

236:                                              ; preds = %220, %213, %208
  %237 = load i32, i32* @DEFAULT_CURSOR_BLINK_MS, align 4
  %238 = load %struct.vc_data*, %struct.vc_data** %2, align 8
  %239 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %238, i32 0, i32 6
  store i32 %237, i32* %239, align 4
  br label %240

240:                                              ; preds = %236, %228
  br label %241

241:                                              ; preds = %1, %240, %205, %200, %184, %183, %158, %129, %108, %89, %73, %40
  ret void
}

declare dso_local i32 @update_attr(%struct.vc_data*) #1

declare dso_local i32 @default_attr(%struct.vc_data*) #1

declare dso_local i32 @poke_blanked_console(...) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @vc_cons_allocated(i32) #1

declare dso_local i32 @set_console(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
