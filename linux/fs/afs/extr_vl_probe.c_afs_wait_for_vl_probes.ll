; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_vl_probe.c_afs_wait_for_vl_probes.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_vl_probe.c_afs_wait_for_vl_probes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_vlserver_list = type { i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.afs_vlserver* }
%struct.afs_vlserver = type { i64, i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i64 }
%struct.wait_queue_entry = type { i32 }

@UINT_MAX = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"%u,%lx\00", align 1
@AFS_VLSERVER_FL_PROBING = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@ERESTARTSYS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c" = 0 [%u]\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @afs_wait_for_vl_probes(%struct.afs_vlserver_list* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_vlserver_list*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.wait_queue_entry*, align 8
  %7 = alloca %struct.afs_vlserver*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.afs_vlserver_list* %0, %struct.afs_vlserver_list** %4, align 8
  store i64 %1, i64* %5, align 8
  %13 = load i32, i32* @UINT_MAX, align 4
  store i32 %13, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 -1, i32* %10, align 4
  %14 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %15 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i64, i64* %5, align 8
  %18 = call i32 @_enter(i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %16, i64 %17)
  store i32 0, i32* %11, align 4
  br label %19

19:                                               ; preds = %55, %2
  %20 = load i32, i32* %11, align 4
  %21 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %22 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp slt i32 %20, %23
  br i1 %24, label %25, label %58

25:                                               ; preds = %19
  %26 = load i32, i32* %11, align 4
  %27 = call i64 @test_bit(i32 %26, i64* %5)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %54

29:                                               ; preds = %25
  %30 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %31 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %30, i32 0, i32 2
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = load i32, i32* %11, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load %struct.afs_vlserver*, %struct.afs_vlserver** %36, align 8
  store %struct.afs_vlserver* %37, %struct.afs_vlserver** %7, align 8
  %38 = load i32, i32* @AFS_VLSERVER_FL_PROBING, align 4
  %39 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %40 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %39, i32 0, i32 0
  %41 = call i64 @test_bit(i32 %38, i64* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %46, label %43

43:                                               ; preds = %29
  %44 = load i32, i32* %11, align 4
  %45 = call i32 @__clear_bit(i32 %44, i64* %5)
  br label %46

46:                                               ; preds = %43, %29
  %47 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %48 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %47, i32 0, i32 2
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %53

53:                                               ; preds = %52, %46
  br label %54

54:                                               ; preds = %53, %25
  br label %55

55:                                               ; preds = %54
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %11, align 4
  br label %19

58:                                               ; preds = %19
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load i64, i64* %5, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %65, label %64

64:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %239

65:                                               ; preds = %61
  %66 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %67 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = call i32 @array_size(i32 %68, i32 4)
  %70 = load i32, i32* @GFP_KERNEL, align 4
  %71 = call %struct.wait_queue_entry* @kmalloc(i32 %69, i32 %70)
  store %struct.wait_queue_entry* %71, %struct.wait_queue_entry** %6, align 8
  %72 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %6, align 8
  %73 = icmp ne %struct.wait_queue_entry* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* @ENOMEM, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %3, align 4
  br label %239

77:                                               ; preds = %65
  store i32 0, i32* %11, align 4
  br label %78

78:                                               ; preds = %111, %77
  %79 = load i32, i32* %11, align 4
  %80 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %81 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = icmp slt i32 %79, %82
  br i1 %83, label %84, label %114

84:                                               ; preds = %78
  %85 = load i32, i32* %11, align 4
  %86 = call i64 @test_bit(i32 %85, i64* %5)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %110

88:                                               ; preds = %84
  %89 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %90 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %89, i32 0, i32 2
  %91 = load %struct.TYPE_3__*, %struct.TYPE_3__** %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %91, i64 %93
  %95 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i32 0, i32 0
  %96 = load %struct.afs_vlserver*, %struct.afs_vlserver** %95, align 8
  store %struct.afs_vlserver* %96, %struct.afs_vlserver** %7, align 8
  %97 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %6, align 8
  %98 = load i32, i32* %11, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %97, i64 %99
  %101 = load i32, i32* @current, align 4
  %102 = call i32 @init_waitqueue_entry(%struct.wait_queue_entry* %100, i32 %101)
  %103 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %104 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %103, i32 0, i32 1
  %105 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %6, align 8
  %106 = load i32, i32* %11, align 4
  %107 = sext i32 %106 to i64
  %108 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %105, i64 %107
  %109 = call i32 @add_wait_queue(i32* %104, %struct.wait_queue_entry* %108)
  br label %110

110:                                              ; preds = %88, %84
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %11, align 4
  %113 = add nsw i32 %112, 1
  store i32 %113, i32* %11, align 4
  br label %78

114:                                              ; preds = %78
  br label %115

115:                                              ; preds = %163, %114
  store i32 0, i32* %12, align 4
  %116 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %117 = call i32 @set_current_state(i32 %116)
  store i32 0, i32* %11, align 4
  br label %118

118:                                              ; preds = %152, %115
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %121 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = icmp slt i32 %119, %122
  br i1 %123, label %124, label %155

124:                                              ; preds = %118
  %125 = load i32, i32* %11, align 4
  %126 = call i64 @test_bit(i32 %125, i64* %5)
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %151

128:                                              ; preds = %124
  %129 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %130 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %129, i32 0, i32 2
  %131 = load %struct.TYPE_3__*, %struct.TYPE_3__** %130, align 8
  %132 = load i32, i32* %11, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %134, i32 0, i32 0
  %136 = load %struct.afs_vlserver*, %struct.afs_vlserver** %135, align 8
  store %struct.afs_vlserver* %136, %struct.afs_vlserver** %7, align 8
  %137 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %138 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %137, i32 0, i32 2
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 1
  %140 = load i64, i64* %139, align 8
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %128
  br label %165

143:                                              ; preds = %128
  %144 = load i32, i32* @AFS_VLSERVER_FL_PROBING, align 4
  %145 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %146 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %145, i32 0, i32 0
  %147 = call i64 @test_bit(i32 %144, i64* %146)
  %148 = icmp ne i64 %147, 0
  br i1 %148, label %149, label %150

149:                                              ; preds = %143
  store i32 1, i32* %12, align 4
  br label %150

150:                                              ; preds = %149, %143
  br label %151

151:                                              ; preds = %150, %124
  br label %152

152:                                              ; preds = %151
  %153 = load i32, i32* %11, align 4
  %154 = add nsw i32 %153, 1
  store i32 %154, i32* %11, align 4
  br label %118

155:                                              ; preds = %118
  %156 = load i32, i32* %12, align 4
  %157 = icmp ne i32 %156, 0
  br i1 %157, label %158, label %162

158:                                              ; preds = %155
  %159 = load i32, i32* @current, align 4
  %160 = call i64 @signal_pending(i32 %159)
  %161 = icmp ne i64 %160, 0
  br i1 %161, label %162, label %163

162:                                              ; preds = %158, %155
  br label %165

163:                                              ; preds = %158
  %164 = call i32 (...) @schedule()
  br label %115

165:                                              ; preds = %162, %142
  %166 = load i32, i32* @TASK_RUNNING, align 4
  %167 = call i32 @set_current_state(i32 %166)
  store i32 0, i32* %11, align 4
  br label %168

168:                                              ; preds = %214, %165
  %169 = load i32, i32* %11, align 4
  %170 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %171 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = icmp slt i32 %169, %172
  br i1 %173, label %174, label %217

174:                                              ; preds = %168
  %175 = load i32, i32* %11, align 4
  %176 = call i64 @test_bit(i32 %175, i64* %5)
  %177 = icmp ne i64 %176, 0
  br i1 %177, label %178, label %213

178:                                              ; preds = %174
  %179 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %180 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %179, i32 0, i32 2
  %181 = load %struct.TYPE_3__*, %struct.TYPE_3__** %180, align 8
  %182 = load i32, i32* %11, align 4
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %181, i64 %183
  %185 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %184, i32 0, i32 0
  %186 = load %struct.afs_vlserver*, %struct.afs_vlserver** %185, align 8
  store %struct.afs_vlserver* %186, %struct.afs_vlserver** %7, align 8
  %187 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %188 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %187, i32 0, i32 2
  %189 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %188, i32 0, i32 1
  %190 = load i64, i64* %189, align 8
  %191 = icmp ne i64 %190, 0
  br i1 %191, label %192, label %205

192:                                              ; preds = %178
  %193 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %194 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %193, i32 0, i32 2
  %195 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = load i32, i32* %8, align 4
  %198 = icmp ult i32 %196, %197
  br i1 %198, label %199, label %205

199:                                              ; preds = %192
  %200 = load i32, i32* %11, align 4
  store i32 %200, i32* %10, align 4
  %201 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %202 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %201, i32 0, i32 2
  %203 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %202, i32 0, i32 0
  %204 = load i32, i32* %203, align 8
  store i32 %204, i32* %8, align 4
  br label %205

205:                                              ; preds = %199, %192, %178
  %206 = load %struct.afs_vlserver*, %struct.afs_vlserver** %7, align 8
  %207 = getelementptr inbounds %struct.afs_vlserver, %struct.afs_vlserver* %206, i32 0, i32 1
  %208 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %6, align 8
  %209 = load i32, i32* %11, align 4
  %210 = sext i32 %209 to i64
  %211 = getelementptr inbounds %struct.wait_queue_entry, %struct.wait_queue_entry* %208, i64 %210
  %212 = call i32 @remove_wait_queue(i32* %207, %struct.wait_queue_entry* %211)
  br label %213

213:                                              ; preds = %205, %174
  br label %214

214:                                              ; preds = %213
  %215 = load i32, i32* %11, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %11, align 4
  br label %168

217:                                              ; preds = %168
  %218 = load %struct.wait_queue_entry*, %struct.wait_queue_entry** %6, align 8
  %219 = call i32 @kfree(%struct.wait_queue_entry* %218)
  %220 = load i32, i32* %10, align 4
  %221 = icmp eq i32 %220, -1
  br i1 %221, label %222, label %229

222:                                              ; preds = %217
  %223 = load i32, i32* @current, align 4
  %224 = call i64 @signal_pending(i32 %223)
  %225 = icmp ne i64 %224, 0
  br i1 %225, label %226, label %229

226:                                              ; preds = %222
  %227 = load i32, i32* @ERESTARTSYS, align 4
  %228 = sub nsw i32 0, %227
  store i32 %228, i32* %3, align 4
  br label %239

229:                                              ; preds = %222, %217
  %230 = load i32, i32* %10, align 4
  %231 = icmp sge i32 %230, 0
  br i1 %231, label %232, label %236

232:                                              ; preds = %229
  %233 = load i32, i32* %10, align 4
  %234 = load %struct.afs_vlserver_list*, %struct.afs_vlserver_list** %4, align 8
  %235 = getelementptr inbounds %struct.afs_vlserver_list, %struct.afs_vlserver_list* %234, i32 0, i32 1
  store i32 %233, i32* %235, align 4
  br label %236

236:                                              ; preds = %232, %229
  %237 = load i32, i32* %10, align 4
  %238 = call i32 @_leave(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0), i32 %237)
  store i32 0, i32* %3, align 4
  br label %239

239:                                              ; preds = %236, %226, %74, %64
  %240 = load i32, i32* %3, align 4
  ret i32 %240
}

declare dso_local i32 @_enter(i8*, i32, i64) #1

declare dso_local i64 @test_bit(i32, i64*) #1

declare dso_local i32 @__clear_bit(i32, i64*) #1

declare dso_local %struct.wait_queue_entry* @kmalloc(i32, i32) #1

declare dso_local i32 @array_size(i32, i32) #1

declare dso_local i32 @init_waitqueue_entry(%struct.wait_queue_entry*, i32) #1

declare dso_local i32 @add_wait_queue(i32*, %struct.wait_queue_entry*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @schedule(...) #1

declare dso_local i32 @remove_wait_queue(i32*, %struct.wait_queue_entry*) #1

declare dso_local i32 @kfree(%struct.wait_queue_entry*) #1

declare dso_local i32 @_leave(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
