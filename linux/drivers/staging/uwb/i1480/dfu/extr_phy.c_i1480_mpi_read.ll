; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_phy.c_i1480_mpi_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/uwb/i1480/dfu/extr_phy.c_i1480_mpi_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.i1480 = type { i32, i32, %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read* }
%struct.i1480_evt_mpi_read = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, i8*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i8* }
%struct.TYPE_4__ = type { i8*, i8* }
%struct.i1480_cmd_mpi_read = type { i64, %struct.TYPE_6__*, %struct.TYPE_5__, i8*, %struct.TYPE_4__ }

@ENOMEM = common dso_local global i32 0, align 4
@i1480_CET_VS1 = common dso_local global i8* null, align 8
@i1480_CMD_MPI_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"MPI-READ\00", align 1
@UWB_RC_RES_SUCCESS = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [40 x i8] c"MPI-READ: command execution failed: %d\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [71 x i8] c"MPI-READ: page inconsistency at index %u: expected 0x%02x, got 0x%02x\0A\00", align 1
@.str.3 = private unnamed_addr constant [73 x i8] c"MPI-READ: offset inconsistency at index %u: expected 0x%02x, got 0x%02x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.i1480*, i32*, i32, i64)* @i1480_mpi_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @i1480_mpi_read(%struct.i1480* %0, i32* %1, i32 %2, i64 %3) #0 {
  %5 = alloca %struct.i1480*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.i1480_cmd_mpi_read*, align 8
  %11 = alloca %struct.i1480_evt_mpi_read*, align 8
  %12 = alloca i32, align 4
  store %struct.i1480* %0, %struct.i1480** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  store i64 %3, i64* %8, align 8
  %13 = load %struct.i1480*, %struct.i1480** %5, align 8
  %14 = getelementptr inbounds %struct.i1480, %struct.i1480* %13, i32 0, i32 3
  %15 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %14, align 8
  %16 = bitcast %struct.i1480_evt_mpi_read* %15 to %struct.i1480_cmd_mpi_read*
  store %struct.i1480_cmd_mpi_read* %16, %struct.i1480_cmd_mpi_read** %10, align 8
  %17 = load %struct.i1480*, %struct.i1480** %5, align 8
  %18 = getelementptr inbounds %struct.i1480, %struct.i1480* %17, i32 0, i32 2
  %19 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %18, align 8
  store %struct.i1480_evt_mpi_read* %19, %struct.i1480_evt_mpi_read** %11, align 8
  %20 = load %struct.i1480*, %struct.i1480** %5, align 8
  %21 = getelementptr inbounds %struct.i1480, %struct.i1480* %20, i32 0, i32 3
  %22 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %21, align 8
  %23 = call i32 @memset(%struct.i1480_evt_mpi_read* %22, i32 105, i32 512)
  %24 = load %struct.i1480*, %struct.i1480** %5, align 8
  %25 = getelementptr inbounds %struct.i1480, %struct.i1480* %24, i32 0, i32 2
  %26 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %25, align 8
  %27 = call i32 @memset(%struct.i1480_evt_mpi_read* %26, i32 105, i32 512)
  %28 = load i64, i64* %8, align 8
  %29 = load %struct.i1480*, %struct.i1480** %5, align 8
  %30 = getelementptr inbounds %struct.i1480, %struct.i1480* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = sext i32 %31 to i64
  %33 = sub i64 %32, 56
  %34 = udiv i64 %33, 3
  %35 = icmp ugt i64 %28, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @BUG_ON(i32 %36)
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %9, align 4
  %40 = load i8*, i8** @i1480_CET_VS1, align 8
  %41 = load %struct.i1480_cmd_mpi_read*, %struct.i1480_cmd_mpi_read** %10, align 8
  %42 = getelementptr inbounds %struct.i1480_cmd_mpi_read, %struct.i1480_cmd_mpi_read* %41, i32 0, i32 4
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 1
  store i8* %40, i8** %43, align 8
  %44 = load i32, i32* @i1480_CMD_MPI_READ, align 4
  %45 = call i8* @cpu_to_le16(i32 %44)
  %46 = load %struct.i1480_cmd_mpi_read*, %struct.i1480_cmd_mpi_read** %10, align 8
  %47 = getelementptr inbounds %struct.i1480_cmd_mpi_read, %struct.i1480_cmd_mpi_read* %46, i32 0, i32 4
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  store i8* %45, i8** %48, align 8
  %49 = load i64, i64* %8, align 8
  %50 = mul i64 3, %49
  %51 = trunc i64 %50 to i32
  %52 = call i8* @cpu_to_le16(i32 %51)
  %53 = load %struct.i1480_cmd_mpi_read*, %struct.i1480_cmd_mpi_read** %10, align 8
  %54 = getelementptr inbounds %struct.i1480_cmd_mpi_read, %struct.i1480_cmd_mpi_read* %53, i32 0, i32 3
  store i8* %52, i8** %54, align 8
  store i32 0, i32* %12, align 4
  br label %55

55:                                               ; preds = %83, %4
  %56 = load i32, i32* %12, align 4
  %57 = zext i32 %56 to i64
  %58 = load i64, i64* %8, align 8
  %59 = icmp ult i64 %57, %58
  br i1 %59, label %60, label %86

60:                                               ; preds = %55
  %61 = load i32, i32* %7, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add i32 %61, %62
  %64 = lshr i32 %63, 8
  %65 = load %struct.i1480_cmd_mpi_read*, %struct.i1480_cmd_mpi_read** %10, align 8
  %66 = getelementptr inbounds %struct.i1480_cmd_mpi_read, %struct.i1480_cmd_mpi_read* %65, i32 0, i32 1
  %67 = load %struct.TYPE_6__*, %struct.TYPE_6__** %66, align 8
  %68 = load i32, i32* %12, align 4
  %69 = zext i32 %68 to i64
  %70 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i64 %69
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  store i32 %64, i32* %71, align 4
  %72 = load i32, i32* %7, align 4
  %73 = load i32, i32* %12, align 4
  %74 = add i32 %72, %73
  %75 = and i32 %74, 255
  %76 = load %struct.i1480_cmd_mpi_read*, %struct.i1480_cmd_mpi_read** %10, align 8
  %77 = getelementptr inbounds %struct.i1480_cmd_mpi_read, %struct.i1480_cmd_mpi_read* %76, i32 0, i32 1
  %78 = load %struct.TYPE_6__*, %struct.TYPE_6__** %77, align 8
  %79 = load i32, i32* %12, align 4
  %80 = zext i32 %79 to i64
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %78, i64 %80
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 1
  store i32 %75, i32* %82, align 4
  br label %83

83:                                               ; preds = %60
  %84 = load i32, i32* %12, align 4
  %85 = add i32 %84, 1
  store i32 %85, i32* %12, align 4
  br label %55

86:                                               ; preds = %55
  %87 = load i8*, i8** @i1480_CET_VS1, align 8
  %88 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %89 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %88, i32 0, i32 2
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %89, i32 0, i32 1
  store i8* %87, i8** %90, align 8
  %91 = load i32, i32* @i1480_CMD_MPI_READ, align 4
  %92 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %93 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %92, i32 0, i32 2
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  store i32 %91, i32* %94, align 8
  %95 = load %struct.i1480*, %struct.i1480** %5, align 8
  %96 = load i64, i64* %8, align 8
  %97 = mul i64 2, %96
  %98 = add i64 56, %97
  %99 = trunc i64 %98 to i32
  %100 = load i64, i64* %8, align 8
  %101 = mul i64 3, %100
  %102 = add i64 56, %101
  %103 = trunc i64 %102 to i32
  %104 = call i32 @i1480_cmd(%struct.i1480* %95, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 %99, i32 %103)
  store i32 %104, i32* %9, align 4
  %105 = load i32, i32* %9, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %86
  br label %212

108:                                              ; preds = %86
  %109 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %110 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @UWB_RC_RES_SUCCESS, align 8
  %113 = icmp ne i64 %111, %112
  br i1 %113, label %114, label %125

114:                                              ; preds = %108
  %115 = load %struct.i1480*, %struct.i1480** %5, align 8
  %116 = getelementptr inbounds %struct.i1480, %struct.i1480* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %119 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %117, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %121)
  %123 = load i32, i32* @EIO, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %9, align 4
  br label %212

125:                                              ; preds = %108
  store i32 0, i32* %12, align 4
  br label %126

126:                                              ; preds = %208, %125
  %127 = load i32, i32* %12, align 4
  %128 = zext i32 %127 to i64
  %129 = load i64, i64* %8, align 8
  %130 = icmp ult i64 %128, %129
  br i1 %130, label %131, label %211

131:                                              ; preds = %126
  %132 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %133 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %132, i32 0, i32 1
  %134 = load %struct.TYPE_6__*, %struct.TYPE_6__** %133, align 8
  %135 = load i32, i32* %12, align 4
  %136 = zext i32 %135 to i64
  %137 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %134, i64 %136
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = load i32, i32* %7, align 4
  %141 = load i32, i32* %12, align 4
  %142 = add i32 %140, %141
  %143 = lshr i32 %142, 8
  %144 = icmp ne i32 %139, %143
  br i1 %144, label %145, label %163

145:                                              ; preds = %131
  %146 = load %struct.i1480*, %struct.i1480** %5, align 8
  %147 = getelementptr inbounds %struct.i1480, %struct.i1480* %146, i32 0, i32 1
  %148 = load i32, i32* %147, align 4
  %149 = load i32, i32* %12, align 4
  %150 = load i32, i32* %7, align 4
  %151 = load i32, i32* %12, align 4
  %152 = add i32 %150, %151
  %153 = lshr i32 %152, 8
  %154 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %155 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %154, i32 0, i32 1
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %155, align 8
  %157 = load i32, i32* %12, align 4
  %158 = zext i32 %157 to i64
  %159 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i64 %158
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %148, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.2, i64 0, i64 0), i32 %149, i32 %153, i32 %161)
  br label %163

163:                                              ; preds = %145, %131
  %164 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %165 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %164, i32 0, i32 1
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %165, align 8
  %167 = load i32, i32* %12, align 4
  %168 = zext i32 %167 to i64
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i64 %168
  %170 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %169, i32 0, i32 1
  %171 = load i32, i32* %170, align 4
  %172 = load i32, i32* %7, align 4
  %173 = load i32, i32* %12, align 4
  %174 = add i32 %172, %173
  %175 = and i32 %174, 255
  %176 = icmp ne i32 %171, %175
  br i1 %176, label %177, label %195

177:                                              ; preds = %163
  %178 = load %struct.i1480*, %struct.i1480** %5, align 8
  %179 = getelementptr inbounds %struct.i1480, %struct.i1480* %178, i32 0, i32 1
  %180 = load i32, i32* %179, align 4
  %181 = load i32, i32* %12, align 4
  %182 = load i32, i32* %7, align 4
  %183 = load i32, i32* %12, align 4
  %184 = add i32 %182, %183
  %185 = and i32 %184, 255
  %186 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %187 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %186, i32 0, i32 1
  %188 = load %struct.TYPE_6__*, %struct.TYPE_6__** %187, align 8
  %189 = load i32, i32* %12, align 4
  %190 = zext i32 %189 to i64
  %191 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %188, i64 %190
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 (i32, i8*, i32, ...) @dev_err(i32 %180, i8* getelementptr inbounds ([73 x i8], [73 x i8]* @.str.3, i64 0, i64 0), i32 %181, i32 %185, i32 %193)
  br label %195

195:                                              ; preds = %177, %163
  %196 = load %struct.i1480_evt_mpi_read*, %struct.i1480_evt_mpi_read** %11, align 8
  %197 = getelementptr inbounds %struct.i1480_evt_mpi_read, %struct.i1480_evt_mpi_read* %196, i32 0, i32 1
  %198 = load %struct.TYPE_6__*, %struct.TYPE_6__** %197, align 8
  %199 = load i32, i32* %12, align 4
  %200 = zext i32 %199 to i64
  %201 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %198, i64 %200
  %202 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %201, i32 0, i32 2
  %203 = load i32, i32* %202, align 4
  %204 = load i32*, i32** %6, align 8
  %205 = load i32, i32* %12, align 4
  %206 = zext i32 %205 to i64
  %207 = getelementptr inbounds i32, i32* %204, i64 %206
  store i32 %203, i32* %207, align 4
  br label %208

208:                                              ; preds = %195
  %209 = load i32, i32* %12, align 4
  %210 = add i32 %209, 1
  store i32 %210, i32* %12, align 4
  br label %126

211:                                              ; preds = %126
  store i32 0, i32* %9, align 4
  br label %212

212:                                              ; preds = %211, %114, %107
  %213 = load i32, i32* %9, align 4
  ret i32 %213
}

declare dso_local i32 @memset(%struct.i1480_evt_mpi_read*, i32, i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i32 @i1480_cmd(%struct.i1480*, i8*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
