; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_write.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_tty.c_n_tty_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, i32, i64, i32, %struct.TYPE_6__*, %struct.n_tty_data*, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 (%struct.tty_struct*, i8*, i64)*, i32 (%struct.tty_struct*)* }
%struct.n_tty_data = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.file = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@wait = common dso_local global i32 0, align 4
@woken_wake_function = common dso_local global i32 0, align 4
@redirected_tty_write = common dso_local global i64 0, align 8
@current = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@MAX_SCHEDULE_TIMEOUT = common dso_local global i32 0, align 4
@TTY_DO_WRITE_WAKEUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.file*, i8*, i64)* @n_tty_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @n_tty_write(%struct.tty_struct* %0, %struct.file* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.tty_struct*, align 8
  %7 = alloca %struct.file*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.n_tty_data*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %6, align 8
  store %struct.file* %1, %struct.file** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load i8*, i8** %8, align 8
  store i8* %15, i8** %10, align 8
  %16 = load i32, i32* @wait, align 4
  %17 = load i32, i32* @woken_wake_function, align 4
  %18 = call i32 @DEFINE_WAIT_FUNC(i32 %16, i32 %17)
  store i32 0, i32* %12, align 4
  %19 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %20 = call i64 @L_TOSTOP(%struct.tty_struct* %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %38

22:                                               ; preds = %4
  %23 = load %struct.file*, %struct.file** %7, align 8
  %24 = getelementptr inbounds %struct.file, %struct.file* %23, i32 0, i32 0
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @redirected_tty_write, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %38

30:                                               ; preds = %22
  %31 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %32 = call i32 @tty_check_change(%struct.tty_struct* %31)
  store i32 %32, i32* %12, align 4
  %33 = load i32, i32* %12, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %30
  %36 = load i32, i32* %12, align 4
  store i32 %36, i32* %5, align 4
  br label %240

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %22, %4
  %39 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %40 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %39, i32 0, i32 0
  %41 = call i32 @down_read(i32* %40)
  %42 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %43 = call i32 @process_echoes(%struct.tty_struct* %42)
  %44 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %45 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %44, i32 0, i32 3
  %46 = call i32 @add_wait_queue(i32* %45, i32* @wait)
  br label %47

47:                                               ; preds = %38, %191
  %48 = load i32, i32* @current, align 4
  %49 = call i64 @signal_pending(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %54

51:                                               ; preds = %47
  %52 = load i32, i32* @ERESTARTSYS, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %12, align 4
  br label %201

54:                                               ; preds = %47
  %55 = load %struct.file*, %struct.file** %7, align 8
  %56 = call i64 @tty_hung_up_p(%struct.file* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %70, label %58

58:                                               ; preds = %54
  %59 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %60 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %59, i32 0, i32 6
  %61 = load %struct.TYPE_5__*, %struct.TYPE_5__** %60, align 8
  %62 = icmp ne %struct.TYPE_5__* %61, null
  br i1 %62, label %63, label %73

63:                                               ; preds = %58
  %64 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %65 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %64, i32 0, i32 6
  %66 = load %struct.TYPE_5__*, %struct.TYPE_5__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %73, label %70

70:                                               ; preds = %63, %54
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %12, align 4
  br label %201

73:                                               ; preds = %63, %58
  %74 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %75 = call i64 @O_OPOST(%struct.tty_struct* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %138

77:                                               ; preds = %73
  br label %78

78:                                               ; preds = %117, %77
  %79 = load i64, i64* %9, align 8
  %80 = icmp ugt i64 %79, 0
  br i1 %80, label %81, label %122

81:                                               ; preds = %78
  %82 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %83 = load i8*, i8** %10, align 8
  %84 = load i64, i64* %9, align 8
  %85 = call i32 @process_output_block(%struct.tty_struct* %82, i8* %83, i64 %84)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %81
  %89 = load i32, i32* %13, align 4
  %90 = load i32, i32* @EAGAIN, align 4
  %91 = sub nsw i32 0, %90
  %92 = icmp eq i32 %89, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %122

94:                                               ; preds = %88
  %95 = load i32, i32* %13, align 4
  store i32 %95, i32* %12, align 4
  br label %202

96:                                               ; preds = %81
  %97 = load i32, i32* %13, align 4
  %98 = load i8*, i8** %10, align 8
  %99 = sext i32 %97 to i64
  %100 = getelementptr inbounds i8, i8* %98, i64 %99
  store i8* %100, i8** %10, align 8
  %101 = load i32, i32* %13, align 4
  %102 = sext i32 %101 to i64
  %103 = load i64, i64* %9, align 8
  %104 = sub i64 %103, %102
  store i64 %104, i64* %9, align 8
  %105 = load i64, i64* %9, align 8
  %106 = icmp eq i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %96
  br label %122

108:                                              ; preds = %96
  %109 = load i8*, i8** %10, align 8
  %110 = load i8, i8* %109, align 1
  %111 = zext i8 %110 to i32
  store i32 %111, i32* %11, align 4
  %112 = load i32, i32* %11, align 4
  %113 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %114 = call i64 @process_output(i32 %112, %struct.tty_struct* %113)
  %115 = icmp slt i64 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %108
  br label %122

117:                                              ; preds = %108
  %118 = load i8*, i8** %10, align 8
  %119 = getelementptr inbounds i8, i8* %118, i32 1
  store i8* %119, i8** %10, align 8
  %120 = load i64, i64* %9, align 8
  %121 = add i64 %120, -1
  store i64 %121, i64* %9, align 8
  br label %78

122:                                              ; preds = %116, %107, %93, %78
  %123 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %124 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %123, i32 0, i32 4
  %125 = load %struct.TYPE_6__*, %struct.TYPE_6__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %125, i32 0, i32 1
  %127 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %126, align 8
  %128 = icmp ne i32 (%struct.tty_struct*)* %127, null
  br i1 %128, label %129, label %137

129:                                              ; preds = %122
  %130 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %131 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %130, i32 0, i32 4
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 1
  %134 = load i32 (%struct.tty_struct*)*, i32 (%struct.tty_struct*)** %133, align 8
  %135 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %136 = call i32 %134(%struct.tty_struct* %135)
  br label %137

137:                                              ; preds = %129, %122
  br label %179

138:                                              ; preds = %73
  %139 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %140 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %139, i32 0, i32 5
  %141 = load %struct.n_tty_data*, %struct.n_tty_data** %140, align 8
  store %struct.n_tty_data* %141, %struct.n_tty_data** %14, align 8
  br label %142

142:                                              ; preds = %169, %138
  %143 = load i64, i64* %9, align 8
  %144 = icmp ugt i64 %143, 0
  br i1 %144, label %145, label %178

145:                                              ; preds = %142
  %146 = load %struct.n_tty_data*, %struct.n_tty_data** %14, align 8
  %147 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %146, i32 0, i32 0
  %148 = call i32 @mutex_lock(i32* %147)
  %149 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %150 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %149, i32 0, i32 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = load i32 (%struct.tty_struct*, i8*, i64)*, i32 (%struct.tty_struct*, i8*, i64)** %152, align 8
  %154 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %155 = load i8*, i8** %10, align 8
  %156 = load i64, i64* %9, align 8
  %157 = call i32 %153(%struct.tty_struct* %154, i8* %155, i64 %156)
  store i32 %157, i32* %11, align 4
  %158 = load %struct.n_tty_data*, %struct.n_tty_data** %14, align 8
  %159 = getelementptr inbounds %struct.n_tty_data, %struct.n_tty_data* %158, i32 0, i32 0
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load i32, i32* %11, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %163, label %165

163:                                              ; preds = %145
  %164 = load i32, i32* %11, align 4
  store i32 %164, i32* %12, align 4
  br label %202

165:                                              ; preds = %145
  %166 = load i32, i32* %11, align 4
  %167 = icmp ne i32 %166, 0
  br i1 %167, label %169, label %168

168:                                              ; preds = %165
  br label %178

169:                                              ; preds = %165
  %170 = load i32, i32* %11, align 4
  %171 = load i8*, i8** %10, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %10, align 8
  %174 = load i32, i32* %11, align 4
  %175 = sext i32 %174 to i64
  %176 = load i64, i64* %9, align 8
  %177 = sub i64 %176, %175
  store i64 %177, i64* %9, align 8
  br label %142

178:                                              ; preds = %168, %142
  br label %179

179:                                              ; preds = %178, %137
  %180 = load i64, i64* %9, align 8
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %183, label %182

182:                                              ; preds = %179
  br label %201

183:                                              ; preds = %179
  %184 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %185 = load %struct.file*, %struct.file** %7, align 8
  %186 = call i64 @tty_io_nonblock(%struct.tty_struct* %184, %struct.file* %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %191

188:                                              ; preds = %183
  %189 = load i32, i32* @EAGAIN, align 4
  %190 = sub nsw i32 0, %189
  store i32 %190, i32* %12, align 4
  br label %201

191:                                              ; preds = %183
  %192 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %193 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %192, i32 0, i32 0
  %194 = call i32 @up_read(i32* %193)
  %195 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %196 = load i32, i32* @MAX_SCHEDULE_TIMEOUT, align 4
  %197 = call i32 @wait_woken(i32* @wait, i32 %195, i32 %196)
  %198 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %199 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %198, i32 0, i32 0
  %200 = call i32 @down_read(i32* %199)
  br label %47

201:                                              ; preds = %188, %182, %70, %51
  br label %202

202:                                              ; preds = %201, %163, %94
  %203 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %204 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %203, i32 0, i32 3
  %205 = call i32 @remove_wait_queue(i32* %204, i32* @wait)
  %206 = load i64, i64* %9, align 8
  %207 = icmp ne i64 %206, 0
  br i1 %207, label %208, label %218

208:                                              ; preds = %202
  %209 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %210 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %209, i32 0, i32 2
  %211 = load i64, i64* %210, align 8
  %212 = icmp ne i64 %211, 0
  br i1 %212, label %213, label %218

213:                                              ; preds = %208
  %214 = load i32, i32* @TTY_DO_WRITE_WAKEUP, align 4
  %215 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %216 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %215, i32 0, i32 1
  %217 = call i32 @set_bit(i32 %214, i32* %216)
  br label %218

218:                                              ; preds = %213, %208, %202
  %219 = load %struct.tty_struct*, %struct.tty_struct** %6, align 8
  %220 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %219, i32 0, i32 0
  %221 = call i32 @up_read(i32* %220)
  %222 = load i8*, i8** %10, align 8
  %223 = load i8*, i8** %8, align 8
  %224 = ptrtoint i8* %222 to i64
  %225 = ptrtoint i8* %223 to i64
  %226 = sub i64 %224, %225
  %227 = icmp ne i64 %226, 0
  br i1 %227, label %228, label %234

228:                                              ; preds = %218
  %229 = load i8*, i8** %10, align 8
  %230 = load i8*, i8** %8, align 8
  %231 = ptrtoint i8* %229 to i64
  %232 = ptrtoint i8* %230 to i64
  %233 = sub i64 %231, %232
  br label %237

234:                                              ; preds = %218
  %235 = load i32, i32* %12, align 4
  %236 = sext i32 %235 to i64
  br label %237

237:                                              ; preds = %234, %228
  %238 = phi i64 [ %233, %228 ], [ %236, %234 ]
  %239 = trunc i64 %238 to i32
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %237, %35
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i32 @DEFINE_WAIT_FUNC(i32, i32) #1

declare dso_local i64 @L_TOSTOP(%struct.tty_struct*) #1

declare dso_local i32 @tty_check_change(%struct.tty_struct*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @process_echoes(%struct.tty_struct*) #1

declare dso_local i32 @add_wait_queue(i32*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i64 @tty_hung_up_p(%struct.file*) #1

declare dso_local i64 @O_OPOST(%struct.tty_struct*) #1

declare dso_local i32 @process_output_block(%struct.tty_struct*, i8*, i64) #1

declare dso_local i64 @process_output(i32, %struct.tty_struct*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @tty_io_nonblock(%struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @wait_woken(i32*, i32, i32) #1

declare dso_local i32 @remove_wait_queue(i32*, i32*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
