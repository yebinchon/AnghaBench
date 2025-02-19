; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_more_adisc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/lpfc/extr_lpfc_els.c_lpfc_more_adisc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.lpfc_vport = type { i32, i64, i32, i32 }

@KERN_INFO = common dso_local global i32 0, align 4
@LOG_DISCOVERY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [64 x i8] c"0210 Continue discovery with %d ADISCs to go Data: x%x x%x x%x\0A\00", align 1
@FC_NLP_MORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @lpfc_more_adisc(%struct.lpfc_vport* %0) #0 {
  %2 = alloca %struct.lpfc_vport*, align 8
  store %struct.lpfc_vport* %0, %struct.lpfc_vport** %2, align 8
  %3 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %4 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %3, i32 0, i32 1
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %12

7:                                                ; preds = %1
  %8 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %9 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = add nsw i64 %10, -1
  store i64 %11, i64* %9, align 8
  br label %12

12:                                               ; preds = %7, %1
  %13 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %14 = load i32, i32* @KERN_INFO, align 4
  %15 = load i32, i32* @LOG_DISCOVERY, align 4
  %16 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %17 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %16, i32 0, i32 1
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %20 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %19, i32 0, i32 3
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %23 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %26 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @lpfc_printf_vlog(%struct.lpfc_vport* %13, i32 %14, i32 %15, i8* getelementptr inbounds ([64 x i8], [64 x i8]* @.str, i64 0, i64 0), i64 %18, i32 %21, i32 %24, i32 %27)
  %29 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %30 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = load i32, i32* @FC_NLP_MORE, align 4
  %33 = and i32 %31, %32
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %12
  %36 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %37 = call i32 @lpfc_set_disctmo(%struct.lpfc_vport* %36)
  %38 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %39 = call i32 @lpfc_els_disc_adisc(%struct.lpfc_vport* %38)
  br label %40

40:                                               ; preds = %35, %12
  %41 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %42 = getelementptr inbounds %struct.lpfc_vport, %struct.lpfc_vport* %41, i32 0, i32 1
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %40
  %46 = load %struct.lpfc_vport*, %struct.lpfc_vport** %2, align 8
  %47 = call i32 @lpfc_adisc_done(%struct.lpfc_vport* %46)
  br label %48

48:                                               ; preds = %45, %40
  ret void
}

declare dso_local i32 @lpfc_printf_vlog(%struct.lpfc_vport*, i32, i32, i8*, i64, i32, i32, i32) #1

declare dso_local i32 @lpfc_set_disctmo(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_els_disc_adisc(%struct.lpfc_vport*) #1

declare dso_local i32 @lpfc_adisc_done(%struct.lpfc_vport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
