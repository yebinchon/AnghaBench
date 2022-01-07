; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_iopoll_weight.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_ipr.c_ipr_store_iopoll_weight.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.Scsi_Host = type { i32, i64 }
%struct.ipr_ioa_cfg = type { i64, i32, i32, %struct.TYPE_4__*, i64, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"irq_poll not supported on this adapter\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [51 x i8] c"Invalid irq_poll weight. It must be less than 256\0A\00", align 1
@.str.2 = private unnamed_addr constant [45 x i8] c"Current irq_poll weight has the same weight\0A\00", align 1
@ipr_iopoll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @ipr_store_iopoll_weight to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipr_store_iopoll_weight(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.Scsi_Host*, align 8
  %11 = alloca %struct.ipr_ioa_cfg*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %15 = load %struct.device*, %struct.device** %6, align 8
  %16 = call %struct.Scsi_Host* @class_to_shost(%struct.device* %15)
  store %struct.Scsi_Host* %16, %struct.Scsi_Host** %10, align 8
  %17 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %18 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = inttoptr i64 %19 to %struct.ipr_ioa_cfg*
  store %struct.ipr_ioa_cfg* %20, %struct.ipr_ioa_cfg** %11, align 8
  store i64 0, i64* %13, align 8
  %21 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %22 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %21, i32 0, i32 4
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %33, label %25

25:                                               ; preds = %4
  %26 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %27 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %26, i32 0, i32 5
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @dev_info(i32* %29, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %5, align 4
  br label %155

33:                                               ; preds = %4
  %34 = load i8*, i8** %8, align 8
  %35 = call i64 @kstrtoul(i8* %34, i32 10, i64* %12)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %33
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %5, align 4
  br label %155

40:                                               ; preds = %33
  %41 = load i64, i64* %12, align 8
  %42 = icmp ugt i64 %41, 256
  br i1 %42, label %43, label %51

43:                                               ; preds = %40
  %44 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %45 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %44, i32 0, i32 5
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = call i32 @dev_info(i32* %47, i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str.1, i64 0, i64 0))
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %155

51:                                               ; preds = %40
  %52 = load i64, i64* %12, align 8
  %53 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %54 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = icmp eq i64 %52, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %51
  %58 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %59 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %58, i32 0, i32 5
  %60 = load %struct.TYPE_3__*, %struct.TYPE_3__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %60, i32 0, i32 0
  %62 = call i32 @dev_info(i32* %61, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.2, i64 0, i64 0))
  %63 = load i8*, i8** %8, align 8
  %64 = call i32 @strlen(i8* %63)
  store i32 %64, i32* %5, align 4
  br label %155

65:                                               ; preds = %51
  %66 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %67 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %100

70:                                               ; preds = %65
  %71 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %72 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %71, i32 0, i32 4
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %100

75:                                               ; preds = %70
  %76 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %77 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 8
  %79 = icmp sgt i32 %78, 1
  br i1 %79, label %80, label %100

80:                                               ; preds = %75
  store i32 1, i32* %14, align 4
  br label %81

81:                                               ; preds = %96, %80
  %82 = load i32, i32* %14, align 4
  %83 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %84 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 4
  %86 = icmp slt i32 %82, %85
  br i1 %86, label %87, label %99

87:                                               ; preds = %81
  %88 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %89 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %88, i32 0, i32 3
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %89, align 8
  %91 = load i32, i32* %14, align 4
  %92 = sext i32 %91 to i64
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i64 %92
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = call i32 @irq_poll_disable(i32* %94)
  br label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %14, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %14, align 4
  br label %81

99:                                               ; preds = %81
  br label %100

100:                                              ; preds = %99, %75, %70, %65
  %101 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %102 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* %13, align 8
  %105 = call i32 @spin_lock_irqsave(i32 %103, i64 %104)
  %106 = load i64, i64* %12, align 8
  %107 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %108 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %107, i32 0, i32 0
  store i64 %106, i64* %108, align 8
  %109 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %110 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %147

113:                                              ; preds = %100
  %114 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %115 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %114, i32 0, i32 4
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %147

118:                                              ; preds = %113
  %119 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %120 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 8
  %122 = icmp sgt i32 %121, 1
  br i1 %122, label %123, label %147

123:                                              ; preds = %118
  store i32 1, i32* %14, align 4
  br label %124

124:                                              ; preds = %143, %123
  %125 = load i32, i32* %14, align 4
  %126 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %127 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %146

130:                                              ; preds = %124
  %131 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %132 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %131, i32 0, i32 3
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %132, align 8
  %134 = load i32, i32* %14, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i64 %135
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 0
  %138 = load %struct.ipr_ioa_cfg*, %struct.ipr_ioa_cfg** %11, align 8
  %139 = getelementptr inbounds %struct.ipr_ioa_cfg, %struct.ipr_ioa_cfg* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = load i32, i32* @ipr_iopoll, align 4
  %142 = call i32 @irq_poll_init(i32* %137, i64 %140, i32 %141)
  br label %143

143:                                              ; preds = %130
  %144 = load i32, i32* %14, align 4
  %145 = add nsw i32 %144, 1
  store i32 %145, i32* %14, align 4
  br label %124

146:                                              ; preds = %124
  br label %147

147:                                              ; preds = %146, %118, %113, %100
  %148 = load %struct.Scsi_Host*, %struct.Scsi_Host** %10, align 8
  %149 = getelementptr inbounds %struct.Scsi_Host, %struct.Scsi_Host* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 8
  %151 = load i64, i64* %13, align 8
  %152 = call i32 @spin_unlock_irqrestore(i32 %150, i64 %151)
  %153 = load i8*, i8** %8, align 8
  %154 = call i32 @strlen(i8* %153)
  store i32 %154, i32* %5, align 4
  br label %155

155:                                              ; preds = %147, %57, %43, %37, %25
  %156 = load i32, i32* %5, align 4
  ret i32 %156
}

declare dso_local %struct.Scsi_Host* @class_to_shost(%struct.device*) #1

declare dso_local i32 @dev_info(i32*, i8*) #1

declare dso_local i64 @kstrtoul(i8*, i32, i64*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @irq_poll_disable(i32*) #1

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @irq_poll_init(i32*, i64, i32) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
