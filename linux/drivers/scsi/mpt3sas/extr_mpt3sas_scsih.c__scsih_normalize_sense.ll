; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_normalize_sense.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/mpt3sas/extr_mpt3sas_scsih.c__scsih_normalize_sense.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sense_info = type { i8, i8, i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.sense_info*)* @_scsih_normalize_sense to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_scsih_normalize_sense(i8* %0, %struct.sense_info* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.sense_info*, align 8
  store i8* %0, i8** %3, align 8
  store %struct.sense_info* %1, %struct.sense_info** %4, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = getelementptr inbounds i8, i8* %5, i64 0
  %7 = load i8, i8* %6, align 1
  %8 = sext i8 %7 to i32
  %9 = and i32 %8, 127
  %10 = icmp sge i32 %9, 114
  br i1 %10, label %11, label %30

11:                                               ; preds = %2
  %12 = load i8*, i8** %3, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = load i8, i8* %13, align 1
  %15 = sext i8 %14 to i32
  %16 = and i32 %15, 15
  %17 = trunc i32 %16 to i8
  %18 = load %struct.sense_info*, %struct.sense_info** %4, align 8
  %19 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %18, i32 0, i32 0
  store i8 %17, i8* %19, align 1
  %20 = load i8*, i8** %3, align 8
  %21 = getelementptr inbounds i8, i8* %20, i64 2
  %22 = load i8, i8* %21, align 1
  %23 = load %struct.sense_info*, %struct.sense_info** %4, align 8
  %24 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %23, i32 0, i32 1
  store i8 %22, i8* %24, align 1
  %25 = load i8*, i8** %3, align 8
  %26 = getelementptr inbounds i8, i8* %25, i64 3
  %27 = load i8, i8* %26, align 1
  %28 = load %struct.sense_info*, %struct.sense_info** %4, align 8
  %29 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %28, i32 0, i32 2
  store i8 %27, i8* %29, align 1
  br label %49

30:                                               ; preds = %2
  %31 = load i8*, i8** %3, align 8
  %32 = getelementptr inbounds i8, i8* %31, i64 2
  %33 = load i8, i8* %32, align 1
  %34 = sext i8 %33 to i32
  %35 = and i32 %34, 15
  %36 = trunc i32 %35 to i8
  %37 = load %struct.sense_info*, %struct.sense_info** %4, align 8
  %38 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %37, i32 0, i32 0
  store i8 %36, i8* %38, align 1
  %39 = load i8*, i8** %3, align 8
  %40 = getelementptr inbounds i8, i8* %39, i64 12
  %41 = load i8, i8* %40, align 1
  %42 = load %struct.sense_info*, %struct.sense_info** %4, align 8
  %43 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %42, i32 0, i32 1
  store i8 %41, i8* %43, align 1
  %44 = load i8*, i8** %3, align 8
  %45 = getelementptr inbounds i8, i8* %44, i64 13
  %46 = load i8, i8* %45, align 1
  %47 = load %struct.sense_info*, %struct.sense_info** %4, align 8
  %48 = getelementptr inbounds %struct.sense_info, %struct.sense_info* %47, i32 0, i32 2
  store i8 %46, i8* %48, align 1
  br label %49

49:                                               ; preds = %30, %11
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
