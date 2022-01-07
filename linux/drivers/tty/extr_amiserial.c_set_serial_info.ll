; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_set_serial_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_amiserial.c_set_serial_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { i32, %struct.serial_state* }
%struct.serial_state = type { i64, i64, i64, i32, %struct.tty_port }
%struct.tty_port = type { i32, i32, i32, i32 }
%struct.serial_struct = type { i32, i64, i64, i64, i32, i32, i32, i64 }

@ASYNC_SPD_MASK = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ASYNC_USR_MASK = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@ASYNC_FLAGS = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@ASYNC_LOW_LATENCY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"use of SPD flags is deprecated\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tty_struct*, %struct.serial_struct*)* @set_serial_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_serial_info(%struct.tty_struct* %0, %struct.serial_struct* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tty_struct*, align 8
  %5 = alloca %struct.serial_struct*, align 8
  %6 = alloca %struct.serial_state*, align 8
  %7 = alloca %struct.tty_port*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.tty_struct* %0, %struct.tty_struct** %4, align 8
  store %struct.serial_struct* %1, %struct.serial_struct** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load %struct.serial_state*, %struct.serial_state** %11, align 8
  store %struct.serial_state* %12, %struct.serial_state** %6, align 8
  %13 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %14 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %13, i32 0, i32 4
  store %struct.tty_port* %14, %struct.tty_port** %7, align 8
  store i32 0, i32* %9, align 4
  %15 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %16 = call i32 @tty_lock(%struct.tty_struct* %15)
  %17 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %18 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %21 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = xor i32 %19, %22
  %24 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %25 = and i32 %23, %24
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %35, label %27

27:                                               ; preds = %2
  %28 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %29 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %32 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %30, %33
  br label %35

35:                                               ; preds = %27, %2
  %36 = phi i1 [ true, %2 ], [ %34, %27 ]
  %37 = zext i1 %36 to i32
  store i32 %37, i32* %8, align 4
  %38 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %39 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %38, i32 0, i32 7
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %58, label %42

42:                                               ; preds = %35
  %43 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %44 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %47 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = icmp ne i64 %45, %48
  br i1 %49, label %58, label %50

50:                                               ; preds = %42
  %51 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %52 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %51, i32 0, i32 3
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %55 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %54, i32 0, i32 2
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %53, %56
  br i1 %57, label %58, label %63

58:                                               ; preds = %50, %42, %35
  %59 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %60 = call i32 @tty_unlock(%struct.tty_struct* %59)
  %61 = load i32, i32* @EINVAL, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %3, align 4
  br label %222

63:                                               ; preds = %50
  %64 = call i32 (...) @serial_isroot()
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %129, label %66

66:                                               ; preds = %63
  %67 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %68 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %67, i32 0, i32 4
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %71 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %70, i32 0, i32 3
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %69, %72
  br i1 %73, label %104, label %74

74:                                               ; preds = %66
  %75 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %76 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %75, i32 0, i32 5
  %77 = load i32, i32* %76, align 4
  %78 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %79 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 4
  %81 = icmp ne i32 %77, %80
  br i1 %81, label %104, label %82

82:                                               ; preds = %74
  %83 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %84 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %83, i32 0, i32 3
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %87 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %86, i32 0, i32 2
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %85, %88
  br i1 %89, label %104, label %90

90:                                               ; preds = %82
  %91 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %92 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @ASYNC_USR_MASK, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %93, %95
  %97 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %98 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load i32, i32* @ASYNC_USR_MASK, align 4
  %101 = xor i32 %100, -1
  %102 = and i32 %99, %101
  %103 = icmp ne i32 %96, %102
  br i1 %103, label %104, label %109

104:                                              ; preds = %90, %82, %74, %66
  %105 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %106 = call i32 @tty_unlock(%struct.tty_struct* %105)
  %107 = load i32, i32* @EPERM, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %3, align 4
  br label %222

109:                                              ; preds = %90
  %110 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %111 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load i32, i32* @ASYNC_USR_MASK, align 4
  %114 = xor i32 %113, -1
  %115 = and i32 %112, %114
  %116 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %117 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32, i32* @ASYNC_USR_MASK, align 4
  %120 = and i32 %118, %119
  %121 = or i32 %115, %120
  %122 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %123 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %122, i32 0, i32 0
  store i32 %121, i32* %123, align 4
  %124 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %125 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %128 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %190

129:                                              ; preds = %63
  %130 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %131 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %130, i32 0, i32 4
  %132 = load i32, i32* %131, align 8
  %133 = icmp slt i32 %132, 9600
  br i1 %133, label %134, label %139

134:                                              ; preds = %129
  %135 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %136 = call i32 @tty_unlock(%struct.tty_struct* %135)
  %137 = load i32, i32* @EINVAL, align 4
  %138 = sub nsw i32 0, %137
  store i32 %138, i32* %3, align 4
  br label %222

139:                                              ; preds = %129
  %140 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %141 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %140, i32 0, i32 4
  %142 = load i32, i32* %141, align 8
  %143 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %144 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 8
  %145 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %146 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  %148 = load i32, i32* @ASYNC_FLAGS, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %152 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @ASYNC_FLAGS, align 4
  %155 = and i32 %153, %154
  %156 = or i32 %150, %155
  %157 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %158 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %157, i32 0, i32 0
  store i32 %156, i32* %158, align 4
  %159 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %160 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %159, i32 0, i32 1
  %161 = load i64, i64* %160, align 8
  %162 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %163 = getelementptr inbounds %struct.serial_state, %struct.serial_state* %162, i32 0, i32 0
  store i64 %161, i64* %163, align 8
  %164 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %165 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %164, i32 0, i32 5
  %166 = load i32, i32* %165, align 4
  %167 = load i32, i32* @HZ, align 4
  %168 = mul nsw i32 %166, %167
  %169 = sdiv i32 %168, 100
  %170 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %171 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %170, i32 0, i32 1
  store i32 %169, i32* %171, align 4
  %172 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %173 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %172, i32 0, i32 6
  %174 = load i32, i32* %173, align 8
  %175 = load i32, i32* @HZ, align 4
  %176 = mul nsw i32 %174, %175
  %177 = sdiv i32 %176, 100
  %178 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %179 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %178, i32 0, i32 2
  store i32 %177, i32* %179, align 4
  %180 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %181 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 4
  %183 = load i32, i32* @ASYNC_LOW_LATENCY, align 4
  %184 = and i32 %182, %183
  %185 = icmp ne i32 %184, 0
  %186 = zext i1 %185 to i64
  %187 = select i1 %185, i32 1, i32 0
  %188 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %189 = getelementptr inbounds %struct.tty_port, %struct.tty_port* %188, i32 0, i32 3
  store i32 %187, i32* %189, align 4
  br label %190

190:                                              ; preds = %139, %109
  %191 = load %struct.tty_port*, %struct.tty_port** %7, align 8
  %192 = call i64 @tty_port_initialized(%struct.tty_port* %191)
  %193 = icmp ne i64 %192, 0
  br i1 %193, label %194, label %214

194:                                              ; preds = %190
  %195 = load i32, i32* %8, align 4
  %196 = icmp ne i32 %195, 0
  br i1 %196, label %197, label %213

197:                                              ; preds = %194
  %198 = load %struct.serial_struct*, %struct.serial_struct** %5, align 8
  %199 = getelementptr inbounds %struct.serial_struct, %struct.serial_struct* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @ASYNC_SPD_MASK, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %206 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %205, i32 0, i32 0
  %207 = load i32, i32* %206, align 8
  %208 = call i32 @dev_warn_ratelimited(i32 %207, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  br label %209

209:                                              ; preds = %204, %197
  %210 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %211 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %212 = call i32 @change_speed(%struct.tty_struct* %210, %struct.serial_state* %211, i32* null)
  br label %213

213:                                              ; preds = %209, %194
  br label %218

214:                                              ; preds = %190
  %215 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %216 = load %struct.serial_state*, %struct.serial_state** %6, align 8
  %217 = call i32 @startup(%struct.tty_struct* %215, %struct.serial_state* %216)
  store i32 %217, i32* %9, align 4
  br label %218

218:                                              ; preds = %214, %213
  %219 = load %struct.tty_struct*, %struct.tty_struct** %4, align 8
  %220 = call i32 @tty_unlock(%struct.tty_struct* %219)
  %221 = load i32, i32* %9, align 4
  store i32 %221, i32* %3, align 4
  br label %222

222:                                              ; preds = %218, %134, %104, %58
  %223 = load i32, i32* %3, align 4
  ret i32 %223
}

declare dso_local i32 @tty_lock(%struct.tty_struct*) #1

declare dso_local i32 @tty_unlock(%struct.tty_struct*) #1

declare dso_local i32 @serial_isroot(...) #1

declare dso_local i64 @tty_port_initialized(%struct.tty_port*) #1

declare dso_local i32 @dev_warn_ratelimited(i32, i8*) #1

declare dso_local i32 @change_speed(%struct.tty_struct*, %struct.serial_state*, i32*) #1

declare dso_local i32 @startup(%struct.tty_struct*, %struct.serial_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
