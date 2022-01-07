; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_init_post_escbs.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/aic94xx/extr_aic94xx_scb.c_asd_init_post_escbs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asd_ha_struct = type { %struct.asd_seq_data }
%struct.asd_seq_data = type { i32, %struct.TYPE_2__** }
%struct.TYPE_2__ = type { i32 }

@escb_tasklet_complete = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"posting %d escbs\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @asd_init_post_escbs(%struct.asd_ha_struct* %0) #0 {
  %2 = alloca %struct.asd_ha_struct*, align 8
  %3 = alloca %struct.asd_seq_data*, align 8
  %4 = alloca i32, align 4
  store %struct.asd_ha_struct* %0, %struct.asd_ha_struct** %2, align 8
  %5 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %6 = getelementptr inbounds %struct.asd_ha_struct, %struct.asd_ha_struct* %5, i32 0, i32 0
  store %struct.asd_seq_data* %6, %struct.asd_seq_data** %3, align 8
  store i32 0, i32* %4, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %4, align 4
  %9 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %10 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp slt i32 %8, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %7
  %14 = load i32, i32* @escb_tasklet_complete, align 4
  %15 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %16 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %16, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %17, i64 %19
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  store i32 %14, i32* %22, align 4
  br label %23

23:                                               ; preds = %13
  %24 = load i32, i32* %4, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %4, align 4
  br label %7

26:                                               ; preds = %7
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @ASD_DPRINTK(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load %struct.asd_ha_struct*, %struct.asd_ha_struct** %2, align 8
  %30 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %31 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %30, i32 0, i32 1
  %32 = load %struct.TYPE_2__**, %struct.TYPE_2__*** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__*, %struct.TYPE_2__** %32, i64 0
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %33, align 8
  %35 = load %struct.asd_seq_data*, %struct.asd_seq_data** %3, align 8
  %36 = getelementptr inbounds %struct.asd_seq_data, %struct.asd_seq_data* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @asd_post_escb_list(%struct.asd_ha_struct* %29, %struct.TYPE_2__* %34, i32 %37)
  ret i32 %38
}

declare dso_local i32 @ASD_DPRINTK(i8*, i32) #1

declare dso_local i32 @asd_post_escb_list(%struct.asd_ha_struct*, %struct.TYPE_2__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
