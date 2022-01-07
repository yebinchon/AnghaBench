; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_queuecommand_lck.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_atp870u.c_atp870u_queuecommand_lck.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32, void (%struct.scsi_cmnd*)*, %struct.TYPE_2__*, i64* }
%struct.TYPE_2__ = type { %struct.Scsi_Host* }
%struct.Scsi_Host = type { i32 }
%struct.atp_unit = type { i32*, i64*, i64*, i64*, i64*, i32*, %struct.scsi_cmnd*** }

@qcnt = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, void (%struct.scsi_cmnd*)*)* @atp870u_queuecommand_lck to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atp870u_queuecommand_lck(%struct.scsi_cmnd* %0, void (%struct.scsi_cmnd*)* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.scsi_cmnd*, align 8
  %5 = alloca void (%struct.scsi_cmnd*)*, align 8
  %6 = alloca i8, align 1
  %7 = alloca i32, align 4
  %8 = alloca %struct.atp_unit*, align 8
  %9 = alloca %struct.Scsi_Host*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %4, align 8
  store void (%struct.scsi_cmnd*)* %1, void (%struct.scsi_cmnd*)** %5, align 8
  %10 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %11 = call i32 @scmd_channel(%struct.scsi_cmnd* %10)
  %12 = trunc i32 %11 to i8
  store i8 %12, i8* %6, align 1
  %13 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %14 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %13, i32 0, i32 3
  %15 = load i64*, i64** %14, align 8
  %16 = getelementptr inbounds i64, i64* %15, i64 0
  store i64 0, i64* %16, align 8
  %17 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %18 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %17, i32 0)
  %19 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %20 = call i32 @scmd_channel(%struct.scsi_cmnd* %19)
  %21 = icmp sgt i32 %20, 1
  br i1 %21, label %22, label %27

22:                                               ; preds = %2
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %24 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %23, i32 0, i32 0
  store i32 262144, i32* %24, align 8
  %25 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %26 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %25(%struct.scsi_cmnd* %26)
  store i32 0, i32* %3, align 4
  br label %182

27:                                               ; preds = %2
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %29 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load %struct.Scsi_Host*, %struct.Scsi_Host** %31, align 8
  store %struct.Scsi_Host* %32, %struct.Scsi_Host** %9, align 8
  %33 = load %struct.Scsi_Host*, %struct.Scsi_Host** %9, align 8
  %34 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %33, i32 0, i32 0
  %35 = bitcast i32* %34 to %struct.atp_unit*
  store %struct.atp_unit* %35, %struct.atp_unit** %8, align 8
  store i32 1, i32* %7, align 4
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %38 = call i32 @scmd_id(%struct.scsi_cmnd* %37)
  %39 = shl i32 %36, %38
  store i32 %39, i32* %7, align 4
  %40 = load i32, i32* %7, align 4
  %41 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %42 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %41, i32 0, i32 0
  %43 = load i32*, i32** %42, align 8
  %44 = load i8, i8* %6, align 1
  %45 = zext i8 %44 to i64
  %46 = getelementptr inbounds i32, i32* %43, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %40, %47
  %49 = icmp eq i32 %48, 0
  br i1 %49, label %50, label %55

50:                                               ; preds = %27
  %51 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %52 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %51, i32 0, i32 0
  store i32 262144, i32* %52, align 8
  %53 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %54 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %53(%struct.scsi_cmnd* %54)
  store i32 0, i32* %3, align 4
  br label %182

55:                                               ; preds = %27
  %56 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %57 = icmp ne void (%struct.scsi_cmnd*)* %56, null
  br i1 %57, label %58, label %62

58:                                               ; preds = %55
  %59 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %60 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %61 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %60, i32 0, i32 1
  store void (%struct.scsi_cmnd*)* %59, void (%struct.scsi_cmnd*)** %61, align 8
  br label %67

62:                                               ; preds = %55
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %64 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %63, i32 0, i32 0
  store i32 0, i32* %64, align 8
  %65 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %66 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %65(%struct.scsi_cmnd* %66)
  store i32 0, i32* %3, align 4
  br label %182

67:                                               ; preds = %58
  %68 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %69 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %68, i32 0, i32 1
  %70 = load i64*, i64** %69, align 8
  %71 = load i8, i8* %6, align 1
  %72 = zext i8 %71 to i64
  %73 = getelementptr inbounds i64, i64* %70, i64 %72
  %74 = load i64, i64* %73, align 8
  %75 = add i64 %74, 1
  store i64 %75, i64* %73, align 8
  %76 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %77 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %76, i32 0, i32 1
  %78 = load i64*, i64** %77, align 8
  %79 = load i8, i8* %6, align 1
  %80 = zext i8 %79 to i64
  %81 = getelementptr inbounds i64, i64* %78, i64 %80
  %82 = load i64, i64* %81, align 8
  %83 = load i64, i64* @qcnt, align 8
  %84 = icmp uge i64 %82, %83
  br i1 %84, label %85, label %92

85:                                               ; preds = %67
  %86 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %87 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %86, i32 0, i32 1
  %88 = load i64*, i64** %87, align 8
  %89 = load i8, i8* %6, align 1
  %90 = zext i8 %89 to i64
  %91 = getelementptr inbounds i64, i64* %88, i64 %90
  store i64 0, i64* %91, align 8
  br label %92

92:                                               ; preds = %85, %67
  %93 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %94 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %93, i32 0, i32 2
  %95 = load i64*, i64** %94, align 8
  %96 = load i8, i8* %6, align 1
  %97 = zext i8 %96 to i64
  %98 = getelementptr inbounds i64, i64* %95, i64 %97
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %101 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i8, i8* %6, align 1
  %104 = zext i8 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp eq i64 %99, %106
  br i1 %107, label %108, label %138

108:                                              ; preds = %92
  %109 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %110 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %109, i32 0, i32 1
  %111 = load i64*, i64** %110, align 8
  %112 = load i8, i8* %6, align 1
  %113 = zext i8 %112 to i64
  %114 = getelementptr inbounds i64, i64* %111, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = icmp eq i64 %115, 0
  br i1 %116, label %117, label %125

117:                                              ; preds = %108
  %118 = load i64, i64* @qcnt, align 8
  %119 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %120 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %119, i32 0, i32 1
  %121 = load i64*, i64** %120, align 8
  %122 = load i8, i8* %6, align 1
  %123 = zext i8 %122 to i64
  %124 = getelementptr inbounds i64, i64* %121, i64 %123
  store i64 %118, i64* %124, align 8
  br label %125

125:                                              ; preds = %117, %108
  %126 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %127 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %126, i32 0, i32 1
  %128 = load i64*, i64** %127, align 8
  %129 = load i8, i8* %6, align 1
  %130 = zext i8 %129 to i64
  %131 = getelementptr inbounds i64, i64* %128, i64 %130
  %132 = load i64, i64* %131, align 8
  %133 = add i64 %132, -1
  store i64 %133, i64* %131, align 8
  %134 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %135 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %134, i32 0, i32 0
  store i32 131072, i32* %135, align 8
  %136 = load void (%struct.scsi_cmnd*)*, void (%struct.scsi_cmnd*)** %5, align 8
  %137 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  call void %136(%struct.scsi_cmnd* %137)
  store i32 0, i32* %3, align 4
  br label %182

138:                                              ; preds = %92
  %139 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %4, align 8
  %140 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %141 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %140, i32 0, i32 6
  %142 = load %struct.scsi_cmnd***, %struct.scsi_cmnd**** %141, align 8
  %143 = load i8, i8* %6, align 1
  %144 = zext i8 %143 to i64
  %145 = getelementptr inbounds %struct.scsi_cmnd**, %struct.scsi_cmnd*** %142, i64 %144
  %146 = load %struct.scsi_cmnd**, %struct.scsi_cmnd*** %145, align 8
  %147 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %148 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %147, i32 0, i32 1
  %149 = load i64*, i64** %148, align 8
  %150 = load i8, i8* %6, align 1
  %151 = zext i8 %150 to i64
  %152 = getelementptr inbounds i64, i64* %149, i64 %151
  %153 = load i64, i64* %152, align 8
  %154 = getelementptr inbounds %struct.scsi_cmnd*, %struct.scsi_cmnd** %146, i64 %153
  store %struct.scsi_cmnd* %139, %struct.scsi_cmnd** %154, align 8
  %155 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %156 = load i8, i8* %6, align 1
  %157 = call i64 @atp_readb_io(%struct.atp_unit* %155, i8 zeroext %156, i32 28)
  %158 = icmp eq i64 %157, 0
  br i1 %158, label %159, label %181

159:                                              ; preds = %138
  %160 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %161 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %160, i32 0, i32 3
  %162 = load i64*, i64** %161, align 8
  %163 = load i8, i8* %6, align 1
  %164 = zext i8 %163 to i64
  %165 = getelementptr inbounds i64, i64* %162, i64 %164
  %166 = load i64, i64* %165, align 8
  %167 = icmp eq i64 %166, 0
  br i1 %167, label %168, label %181

168:                                              ; preds = %159
  %169 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %170 = getelementptr inbounds %struct.atp_unit, %struct.atp_unit* %169, i32 0, i32 4
  %171 = load i64*, i64** %170, align 8
  %172 = load i8, i8* %6, align 1
  %173 = zext i8 %172 to i64
  %174 = getelementptr inbounds i64, i64* %171, i64 %173
  %175 = load i64, i64* %174, align 8
  %176 = icmp eq i64 %175, 0
  br i1 %176, label %177, label %181

177:                                              ; preds = %168
  %178 = load %struct.atp_unit*, %struct.atp_unit** %8, align 8
  %179 = load i8, i8* %6, align 1
  %180 = call i32 @send_s870(%struct.atp_unit* %178, i8 zeroext %179)
  br label %181

181:                                              ; preds = %177, %168, %159, %138
  store i32 0, i32* %3, align 4
  br label %182

182:                                              ; preds = %181, %125, %62, %50, %22
  %183 = load i32, i32* %3, align 4
  ret i32 %183
}

declare dso_local i32 @scmd_channel(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i32) #1

declare dso_local i32 @scmd_id(%struct.scsi_cmnd*) #1

declare dso_local i64 @atp_readb_io(%struct.atp_unit*, i8 zeroext, i32) #1

declare dso_local i32 @send_s870(%struct.atp_unit*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
