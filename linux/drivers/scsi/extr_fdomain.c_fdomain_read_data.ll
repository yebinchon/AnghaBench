; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_read_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_read_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fdomain = type { i64 }

@REG_FIFO_COUNT = common dso_local global i64 0, align 8
@REG_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @fdomain_read_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdomain_read_data(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.fdomain*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %8 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %9 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %8, i32 0, i32 0
  %10 = load %struct.TYPE_2__*, %struct.TYPE_2__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call %struct.fdomain* @shost_priv(i32 %12)
  store %struct.fdomain* %13, %struct.fdomain** %3, align 8
  br label %14

14:                                               ; preds = %62, %1
  %15 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %16 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @REG_FIFO_COUNT, align 8
  %19 = add nsw i64 %17, %18
  %20 = call i64 @inw(i64 %19)
  store i64 %20, i64* %7, align 8
  %21 = icmp ugt i64 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %14
  %23 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %24 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %23)
  %25 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %26 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %25)
  %27 = sub i64 %24, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %29 = call i32 @scsi_sglist(%struct.scsi_cmnd* %28)
  %30 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %31 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %30)
  %32 = call i8* @scsi_kmap_atomic_sg(i32 %29, i32 %31, i64* %6, i64* %7)
  store i8* %32, i8** %4, align 8
  %33 = load i8*, i8** %4, align 8
  %34 = load i64, i64* %6, align 8
  %35 = getelementptr inbounds i8, i8* %33, i64 %34
  store i8* %35, i8** %5, align 8
  %36 = load i64, i64* %7, align 8
  %37 = and i64 %36, 1
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %22
  %40 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %41 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %40, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load i64, i64* @REG_FIFO, align 8
  %44 = add nsw i64 %42, %43
  %45 = call i32 @inb(i64 %44)
  %46 = trunc i32 %45 to i8
  %47 = load i8*, i8** %5, align 8
  %48 = getelementptr inbounds i8, i8* %47, i32 1
  store i8* %48, i8** %5, align 8
  store i8 %46, i8* %47, align 1
  br label %49

49:                                               ; preds = %39, %22
  %50 = load i64, i64* %7, align 8
  %51 = icmp ugt i64 %50, 1
  br i1 %51, label %52, label %62

52:                                               ; preds = %49
  %53 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %54 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @REG_FIFO, align 8
  %57 = add nsw i64 %55, %56
  %58 = load i8*, i8** %5, align 8
  %59 = load i64, i64* %7, align 8
  %60 = lshr i64 %59, 1
  %61 = call i32 @insw(i64 %57, i8* %58, i64 %60)
  br label %62

62:                                               ; preds = %52, %49
  %63 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %64 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %65 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %64)
  %66 = load i64, i64* %7, align 8
  %67 = sub i64 %65, %66
  %68 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %63, i64 %67)
  %69 = load i8*, i8** %4, align 8
  %70 = call i32 @scsi_kunmap_atomic_sg(i8* %69)
  br label %14

71:                                               ; preds = %14
  ret void
}

declare dso_local %struct.fdomain* @shost_priv(i32) #1

declare dso_local i64 @inw(i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i8* @scsi_kmap_atomic_sg(i32, i32, i64*, i64*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @inb(i64) #1

declare dso_local i32 @insw(i64, i8*, i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @scsi_kunmap_atomic_sg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
