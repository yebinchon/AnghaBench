; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_narrow_slave_configure.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_advansys.c_advansys_narrow_slave_configure.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_device = type { i32, i64, i64, i64 }
%struct.TYPE_6__ = type { i32, i32, i32*, i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32* }

@ASCV_DISC_ENABLE_B = common dso_local global i32 0, align 4
@ASCV_USE_TAGGED_QNG_B = common dso_local global i32 0, align 4
@ASCV_CAN_TAGGED_QNG_B = common dso_local global i32 0, align 4
@ASCV_MAX_DVC_QNG_BEG = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_device*, %struct.TYPE_6__*)* @advansys_narrow_slave_configure to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @advansys_narrow_slave_configure(%struct.scsi_device* %0, %struct.TYPE_6__* %1) #0 {
  %3 = alloca %struct.scsi_device*, align 8
  %4 = alloca %struct.TYPE_6__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.scsi_device* %0, %struct.scsi_device** %3, align 8
  store %struct.TYPE_6__* %1, %struct.TYPE_6__** %4, align 8
  %8 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %9 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = shl i32 1, %10
  store i32 %11, i32* %5, align 4
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %6, align 4
  %15 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %16 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %60

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  store i32 %22, i32* %7, align 4
  %23 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 4
  %25 = load %struct.TYPE_5__*, %struct.TYPE_5__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* %5, align 4
  %29 = and i32 %27, %28
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %42

31:                                               ; preds = %19
  %32 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %33 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %31
  %37 = load i32, i32* %5, align 4
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = or i32 %40, %37
  store i32 %41, i32* %39, align 4
  br label %49

42:                                               ; preds = %31, %19
  %43 = load i32, i32* %5, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  br label %49

49:                                               ; preds = %42, %36
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %50, %53
  br i1 %54, label %55, label %59

55:                                               ; preds = %49
  %56 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %57 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %58 = call i32 @AscAsyncFix(%struct.TYPE_6__* %56, %struct.scsi_device* %57)
  br label %59

59:                                               ; preds = %55, %49
  br label %60

60:                                               ; preds = %59, %2
  %61 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %62 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %61, i32 0, i32 2
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %105

65:                                               ; preds = %60
  %66 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %67 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %66, i32 0, i32 4
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = load i32, i32* %5, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %104

74:                                               ; preds = %65
  %75 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %76 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = icmp eq i64 %77, 0
  br i1 %78, label %79, label %92

79:                                               ; preds = %74
  %80 = load i32, i32* %5, align 4
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 4
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = or i32 %85, %80
  store i32 %86, i32* %84, align 8
  %87 = load i32, i32* %5, align 4
  %88 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 8
  %91 = or i32 %90, %87
  store i32 %91, i32* %89, align 8
  br label %92

92:                                               ; preds = %79, %74
  %93 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 2
  %96 = load i32*, i32** %95, align 8
  %97 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %98 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = load i32, i32* %101, align 4
  %103 = call i32 @scsi_change_queue_depth(%struct.scsi_device* %93, i32 %102)
  br label %104

104:                                              ; preds = %92, %65
  br label %126

105:                                              ; preds = %60
  %106 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %107 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %106, i32 0, i32 1
  %108 = load i64, i64* %107, align 8
  %109 = icmp eq i64 %108, 0
  br i1 %109, label %110, label %125

110:                                              ; preds = %105
  %111 = load i32, i32* %5, align 4
  %112 = xor i32 %111, -1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 4
  %115 = load %struct.TYPE_5__*, %struct.TYPE_5__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %115, i32 0, i32 2
  %117 = load i32, i32* %116, align 8
  %118 = and i32 %117, %112
  store i32 %118, i32* %116, align 8
  %119 = load i32, i32* %5, align 4
  %120 = xor i32 %119, -1
  %121 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %122 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %121, i32 0, i32 0
  %123 = load i32, i32* %122, align 8
  %124 = and i32 %123, %120
  store i32 %124, i32* %122, align 8
  br label %125

125:                                              ; preds = %110, %105
  br label %126

126:                                              ; preds = %125, %104
  %127 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %128 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %127, i32 0, i32 1
  %129 = load i64, i64* %128, align 8
  %130 = icmp eq i64 %129, 0
  br i1 %130, label %131, label %205

131:                                              ; preds = %126
  %132 = load i32, i32* %6, align 4
  %133 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %134 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 8
  %136 = icmp ne i32 %132, %135
  br i1 %136, label %137, label %205

137:                                              ; preds = %131
  %138 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %139 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 8
  %141 = load i32, i32* @ASCV_DISC_ENABLE_B, align 4
  %142 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %143 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %142, i32 0, i32 4
  %144 = load %struct.TYPE_5__*, %struct.TYPE_5__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %144, i32 0, i32 3
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @AscWriteLramByte(i32 %140, i32 %141, i32 %146)
  %148 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %149 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %148, i32 0, i32 3
  %150 = load i32, i32* %149, align 8
  %151 = load i32, i32* @ASCV_USE_TAGGED_QNG_B, align 4
  %152 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %153 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = call i32 @AscWriteLramByte(i32 %150, i32 %151, i32 %154)
  %156 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %157 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 8
  %159 = load i32, i32* @ASCV_CAN_TAGGED_QNG_B, align 4
  %160 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %161 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %160, i32 0, i32 4
  %162 = load %struct.TYPE_5__*, %struct.TYPE_5__** %161, align 8
  %163 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 8
  %165 = call i32 @AscWriteLramByte(i32 %158, i32 %159, i32 %164)
  %166 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %167 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %166, i32 0, i32 4
  %168 = load %struct.TYPE_5__*, %struct.TYPE_5__** %167, align 8
  %169 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %168, i32 0, i32 4
  %170 = load i32*, i32** %169, align 8
  %171 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %172 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %171, i32 0, i32 0
  %173 = load i32, i32* %172, align 8
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds i32, i32* %170, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %178 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %177, i32 0, i32 2
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %181 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = sext i32 %182 to i64
  %184 = getelementptr inbounds i32, i32* %179, i64 %183
  store i32 %176, i32* %184, align 4
  %185 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %186 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %185, i32 0, i32 3
  %187 = load i32, i32* %186, align 8
  %188 = load i64, i64* @ASCV_MAX_DVC_QNG_BEG, align 8
  %189 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %190 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 8
  %192 = sext i32 %191 to i64
  %193 = add nsw i64 %188, %192
  %194 = trunc i64 %193 to i32
  %195 = load %struct.TYPE_6__*, %struct.TYPE_6__** %4, align 8
  %196 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %195, i32 0, i32 2
  %197 = load i32*, i32** %196, align 8
  %198 = load %struct.scsi_device*, %struct.scsi_device** %3, align 8
  %199 = getelementptr inbounds %struct.scsi_device, %struct.scsi_device* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = sext i32 %200 to i64
  %202 = getelementptr inbounds i32, i32* %197, i64 %201
  %203 = load i32, i32* %202, align 4
  %204 = call i32 @AscWriteLramByte(i32 %187, i32 %194, i32 %203)
  br label %205

205:                                              ; preds = %137, %131, %126
  ret void
}

declare dso_local i32 @AscAsyncFix(%struct.TYPE_6__*, %struct.scsi_device*) #1

declare dso_local i32 @scsi_change_queue_depth(%struct.scsi_device*, i32) #1

declare dso_local i32 @AscWriteLramByte(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
