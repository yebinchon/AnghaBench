; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_fw1_patch.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_fw.c_sym_fw1_patch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.Scsi_Host = type { i32 }
%struct.sym_hcb = type { i32, i32, i32, i32, i64, i64 }
%struct.sym_fw1a_scr = type { i8**, i8**, i8**, i8** }
%struct.sym_fw1b_scr = type { i8**, i8**, i8** }

@FE_LED0 = common dso_local global i32 0, align 4
@SCR_NO_OP = common dso_local global i32 0, align 4
@SYM_CONF_SET_IARB_ON_ARB_LOST = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.Scsi_Host*)* @sym_fw1_patch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_fw1_patch(%struct.Scsi_Host* %0) #0 {
  %2 = alloca %struct.Scsi_Host*, align 8
  %3 = alloca %struct.sym_hcb*, align 8
  %4 = alloca %struct.sym_fw1a_scr*, align 8
  %5 = alloca %struct.sym_fw1b_scr*, align 8
  store %struct.Scsi_Host* %0, %struct.Scsi_Host** %2, align 8
  %6 = load %struct.Scsi_Host*, %struct.Scsi_Host** %2, align 8
  %7 = call %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host* %6)
  store %struct.sym_hcb* %7, %struct.sym_hcb** %3, align 8
  %8 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %9 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %8, i32 0, i32 5
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.sym_fw1a_scr*
  store %struct.sym_fw1a_scr* %11, %struct.sym_fw1a_scr** %4, align 8
  %12 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %13 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %12, i32 0, i32 4
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.sym_fw1b_scr*
  store %struct.sym_fw1b_scr* %15, %struct.sym_fw1b_scr** %5, align 8
  %16 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %17 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @FE_LED0, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %41, label %22

22:                                               ; preds = %1
  %23 = load i32, i32* @SCR_NO_OP, align 4
  %24 = call i8* @cpu_to_scr(i32 %23)
  %25 = load %struct.sym_fw1a_scr*, %struct.sym_fw1a_scr** %4, align 8
  %26 = getelementptr inbounds %struct.sym_fw1a_scr, %struct.sym_fw1a_scr* %25, i32 0, i32 3
  %27 = load i8**, i8*** %26, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 0
  store i8* %24, i8** %28, align 8
  %29 = load i32, i32* @SCR_NO_OP, align 4
  %30 = call i8* @cpu_to_scr(i32 %29)
  %31 = load %struct.sym_fw1a_scr*, %struct.sym_fw1a_scr** %4, align 8
  %32 = getelementptr inbounds %struct.sym_fw1a_scr, %struct.sym_fw1a_scr* %31, i32 0, i32 2
  %33 = load i8**, i8*** %32, align 8
  %34 = getelementptr inbounds i8*, i8** %33, i64 0
  store i8* %30, i8** %34, align 8
  %35 = load i32, i32* @SCR_NO_OP, align 4
  %36 = call i8* @cpu_to_scr(i32 %35)
  %37 = load %struct.sym_fw1a_scr*, %struct.sym_fw1a_scr** %4, align 8
  %38 = getelementptr inbounds %struct.sym_fw1a_scr, %struct.sym_fw1a_scr* %37, i32 0, i32 1
  %39 = load i8**, i8*** %38, align 8
  %40 = getelementptr inbounds i8*, i8** %39, i64 0
  store i8* %36, i8** %40, align 8
  br label %41

41:                                               ; preds = %22, %1
  %42 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %43 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i8* @cpu_to_scr(i32 %44)
  %46 = load %struct.sym_fw1b_scr*, %struct.sym_fw1b_scr** %5, align 8
  %47 = getelementptr inbounds %struct.sym_fw1b_scr, %struct.sym_fw1b_scr* %46, i32 0, i32 2
  %48 = load i8**, i8*** %47, align 8
  %49 = getelementptr inbounds i8*, i8** %48, i64 0
  store i8* %45, i8** %49, align 8
  %50 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %51 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i8* @cpu_to_scr(i32 %52)
  %54 = load %struct.sym_fw1b_scr*, %struct.sym_fw1b_scr** %5, align 8
  %55 = getelementptr inbounds %struct.sym_fw1b_scr, %struct.sym_fw1b_scr* %54, i32 0, i32 1
  %56 = load i8**, i8*** %55, align 8
  %57 = getelementptr inbounds i8*, i8** %56, i64 0
  store i8* %53, i8** %57, align 8
  %58 = load %struct.sym_hcb*, %struct.sym_hcb** %3, align 8
  %59 = getelementptr inbounds %struct.sym_hcb, %struct.sym_hcb* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_scr(i32 %60)
  %62 = load %struct.sym_fw1b_scr*, %struct.sym_fw1b_scr** %5, align 8
  %63 = getelementptr inbounds %struct.sym_fw1b_scr, %struct.sym_fw1b_scr* %62, i32 0, i32 0
  %64 = load i8**, i8*** %63, align 8
  %65 = getelementptr inbounds i8*, i8** %64, i64 0
  store i8* %61, i8** %65, align 8
  ret void
}

declare dso_local %struct.sym_hcb* @sym_get_hcb(%struct.Scsi_Host*) #1

declare dso_local i8* @cpu_to_scr(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
