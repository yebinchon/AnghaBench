; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_write_data.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_fdomain.c_fdomain_write_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.fdomain = type { i64, i64 }

@tmc18c30 = common dso_local global i64 0, align 8
@REG_FIFO_COUNT = common dso_local global i64 0, align 8
@REG_FIFO = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.scsi_cmnd*)* @fdomain_write_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fdomain_write_data(%struct.scsi_cmnd* %0) #0 {
  %2 = alloca %struct.scsi_cmnd*, align 8
  %3 = alloca %struct.fdomain*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %2, align 8
  %9 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %10 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %9, i32 0, i32 0
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.fdomain* @shost_priv(i32 %13)
  store %struct.fdomain* %14, %struct.fdomain** %3, align 8
  %15 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %16 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @tmc18c30, align 8
  %19 = icmp eq i64 %17, %18
  %20 = zext i1 %19 to i64
  %21 = select i1 %19, i32 2048, i32 8192
  store i32 %21, i32* %4, align 4
  br label %22

22:                                               ; preds = %90, %1
  %23 = load i32, i32* %4, align 4
  %24 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %25 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @REG_FIFO_COUNT, align 8
  %28 = add nsw i64 %26, %27
  %29 = call i32 @inw(i64 %28)
  %30 = sub nsw i32 %23, %29
  %31 = sext i32 %30 to i64
  store i64 %31, i64* %8, align 8
  %32 = icmp ugt i64 %31, 512
  br i1 %32, label %33, label %99

33:                                               ; preds = %22
  %34 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %35 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %34)
  %36 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %37 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %36)
  %38 = sub i64 %35, %37
  store i64 %38, i64* %7, align 8
  %39 = load i64, i64* %8, align 8
  %40 = load i64, i64* %7, align 8
  %41 = add i64 %39, %40
  %42 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %43 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %42)
  %44 = icmp ugt i64 %41, %43
  br i1 %44, label %45, label %54

45:                                               ; preds = %33
  %46 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %47 = call i64 @scsi_bufflen(%struct.scsi_cmnd* %46)
  %48 = load i64, i64* %7, align 8
  %49 = sub i64 %47, %48
  store i64 %49, i64* %8, align 8
  %50 = load i64, i64* %8, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %45
  br label %99

53:                                               ; preds = %45
  br label %54

54:                                               ; preds = %53, %33
  %55 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %56 = call i32 @scsi_sglist(%struct.scsi_cmnd* %55)
  %57 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %58 = call i32 @scsi_sg_count(%struct.scsi_cmnd* %57)
  %59 = call i8* @scsi_kmap_atomic_sg(i32 %56, i32 %58, i64* %7, i64* %8)
  store i8* %59, i8** %5, align 8
  %60 = load i8*, i8** %5, align 8
  %61 = load i64, i64* %7, align 8
  %62 = getelementptr inbounds i8, i8* %60, i64 %61
  store i8* %62, i8** %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = and i64 %63, 1
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %77

66:                                               ; preds = %54
  %67 = load i8*, i8** %6, align 8
  %68 = getelementptr inbounds i8, i8* %67, i32 1
  store i8* %68, i8** %6, align 8
  %69 = load i8, i8* %67, align 1
  %70 = zext i8 %69 to i32
  %71 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %72 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* @REG_FIFO, align 8
  %75 = add nsw i64 %73, %74
  %76 = call i32 @outb(i32 %70, i64 %75)
  br label %77

77:                                               ; preds = %66, %54
  %78 = load i64, i64* %8, align 8
  %79 = icmp ugt i64 %78, 1
  br i1 %79, label %80, label %90

80:                                               ; preds = %77
  %81 = load %struct.fdomain*, %struct.fdomain** %3, align 8
  %82 = getelementptr inbounds %struct.fdomain, %struct.fdomain* %81, i32 0, i32 1
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @REG_FIFO, align 8
  %85 = add nsw i64 %83, %84
  %86 = load i8*, i8** %6, align 8
  %87 = load i64, i64* %8, align 8
  %88 = lshr i64 %87, 1
  %89 = call i32 @outsw(i64 %85, i8* %86, i64 %88)
  br label %90

90:                                               ; preds = %80, %77
  %91 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %92 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %2, align 8
  %93 = call i64 @scsi_get_resid(%struct.scsi_cmnd* %92)
  %94 = load i64, i64* %8, align 8
  %95 = sub i64 %93, %94
  %96 = call i32 @scsi_set_resid(%struct.scsi_cmnd* %91, i64 %95)
  %97 = load i8*, i8** %5, align 8
  %98 = call i32 @scsi_kunmap_atomic_sg(i8* %97)
  br label %22

99:                                               ; preds = %52, %22
  ret void
}

declare dso_local %struct.fdomain* @shost_priv(i32) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i64 @scsi_bufflen(%struct.scsi_cmnd*) #1

declare dso_local i64 @scsi_get_resid(%struct.scsi_cmnd*) #1

declare dso_local i8* @scsi_kmap_atomic_sg(i32, i32, i64*, i64*) #1

declare dso_local i32 @scsi_sglist(%struct.scsi_cmnd*) #1

declare dso_local i32 @scsi_sg_count(%struct.scsi_cmnd*) #1

declare dso_local i32 @outb(i32, i64) #1

declare dso_local i32 @outsw(i64, i8*, i64) #1

declare dso_local i32 @scsi_set_resid(%struct.scsi_cmnd*, i64) #1

declare dso_local i32 @scsi_kunmap_atomic_sg(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
