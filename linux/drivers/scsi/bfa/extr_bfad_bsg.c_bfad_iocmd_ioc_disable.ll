; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_disable.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/bfa/extr_bfad_bsg.c_bfad_iocmd_ioc_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bfad_s = type { i64, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.bfa_bsg_gen_s = type { i8* }

@BFA_STATUS_OK = common dso_local global i8* null, align 8
@EBUSY = common dso_local global i32 0, align 4
@BFA_TRUE = common dso_local global i64 0, align 8
@BFA_FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bfad_iocmd_ioc_disable(%struct.bfad_s* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.bfad_s*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.bfa_bsg_gen_s*, align 8
  %7 = alloca i64, align 8
  store %struct.bfad_s* %0, %struct.bfad_s** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.bfa_bsg_gen_s*
  store %struct.bfa_bsg_gen_s* %9, %struct.bfa_bsg_gen_s** %6, align 8
  %10 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %11 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %10, i32 0, i32 2
  %12 = load i64, i64* %7, align 8
  %13 = call i32 @spin_lock_irqsave(i32* %11, i64 %12)
  %14 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %15 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %14, i32 0, i32 3
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = call i64 @bfa_ioc_is_disabled(i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %21 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %20, i32 0, i32 2
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_unlock_irqrestore(i32* %21, i64 %22)
  %24 = load i8*, i8** @BFA_STATUS_OK, align 8
  %25 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %26 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %25, i32 0, i32 0
  store i8* %24, i8** %26, align 8
  store i32 0, i32* %3, align 4
  br label %62

27:                                               ; preds = %2
  %28 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %29 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %34 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %33, i32 0, i32 2
  %35 = load i64, i64* %7, align 8
  %36 = call i32 @spin_unlock_irqrestore(i32* %34, i64 %35)
  %37 = load i32, i32* @EBUSY, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %62

39:                                               ; preds = %27
  %40 = load i64, i64* @BFA_TRUE, align 8
  %41 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %42 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %44 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %43, i32 0, i32 1
  %45 = call i32 @init_completion(i32* %44)
  %46 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %47 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %46, i32 0, i32 3
  %48 = call i32 @bfa_iocfc_disable(%struct.TYPE_2__* %47)
  %49 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %50 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %49, i32 0, i32 2
  %51 = load i64, i64* %7, align 8
  %52 = call i32 @spin_unlock_irqrestore(i32* %50, i64 %51)
  %53 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %54 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %53, i32 0, i32 1
  %55 = call i32 @wait_for_completion(i32* %54)
  %56 = load i64, i64* @BFA_FALSE, align 8
  %57 = load %struct.bfad_s*, %struct.bfad_s** %4, align 8
  %58 = getelementptr inbounds %struct.bfad_s, %struct.bfad_s* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  %59 = load i8*, i8** @BFA_STATUS_OK, align 8
  %60 = load %struct.bfa_bsg_gen_s*, %struct.bfa_bsg_gen_s** %6, align 8
  %61 = getelementptr inbounds %struct.bfa_bsg_gen_s, %struct.bfa_bsg_gen_s* %60, i32 0, i32 0
  store i8* %59, i8** %61, align 8
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %39, %32, %19
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i64 @bfa_ioc_is_disabled(i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @bfa_iocfc_disable(%struct.TYPE_2__*) #1

declare dso_local i32 @wait_for_completion(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
