; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_get_rsp_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_sd.c_get_rsp_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_cmnd = type { i32* }

@STATUS_FAIL = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R0 = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1 = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R1b = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R2 = common dso_local global i32 0, align 4
@SD_RSP_TYPE_R3 = common dso_local global i32 0, align 4
@STATUS_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_cmnd*, i32*, i32*)* @get_rsp_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_rsp_type(%struct.scsi_cmnd* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.scsi_cmnd*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.scsi_cmnd* %0, %struct.scsi_cmnd** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %8 = load i32*, i32** %6, align 8
  %9 = icmp ne i32* %8, null
  br i1 %9, label %10, label %13

10:                                               ; preds = %3
  %11 = load i32*, i32** %7, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %15, label %13

13:                                               ; preds = %10, %3
  %14 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %14, i32* %4, align 4
  br label %45

15:                                               ; preds = %10
  %16 = load %struct.scsi_cmnd*, %struct.scsi_cmnd** %5, align 8
  %17 = getelementptr inbounds %struct.scsi_cmnd, %struct.scsi_cmnd* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = getelementptr inbounds i32, i32* %18, i64 10
  %20 = load i32, i32* %19, align 4
  switch i32 %20, label %41 [
    i32 3, label %21
    i32 4, label %25
    i32 5, label %29
    i32 6, label %33
    i32 7, label %37
  ]

21:                                               ; preds = %15
  %22 = load i32, i32* @SD_RSP_TYPE_R0, align 4
  %23 = load i32*, i32** %6, align 8
  store i32 %22, i32* %23, align 4
  %24 = load i32*, i32** %7, align 8
  store i32 0, i32* %24, align 4
  br label %43

25:                                               ; preds = %15
  %26 = load i32, i32* @SD_RSP_TYPE_R1, align 4
  %27 = load i32*, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %28 = load i32*, i32** %7, align 8
  store i32 6, i32* %28, align 4
  br label %43

29:                                               ; preds = %15
  %30 = load i32, i32* @SD_RSP_TYPE_R1b, align 4
  %31 = load i32*, i32** %6, align 8
  store i32 %30, i32* %31, align 4
  %32 = load i32*, i32** %7, align 8
  store i32 6, i32* %32, align 4
  br label %43

33:                                               ; preds = %15
  %34 = load i32, i32* @SD_RSP_TYPE_R2, align 4
  %35 = load i32*, i32** %6, align 8
  store i32 %34, i32* %35, align 4
  %36 = load i32*, i32** %7, align 8
  store i32 17, i32* %36, align 4
  br label %43

37:                                               ; preds = %15
  %38 = load i32, i32* @SD_RSP_TYPE_R3, align 4
  %39 = load i32*, i32** %6, align 8
  store i32 %38, i32* %39, align 4
  %40 = load i32*, i32** %7, align 8
  store i32 6, i32* %40, align 4
  br label %43

41:                                               ; preds = %15
  %42 = load i32, i32* @STATUS_FAIL, align 4
  store i32 %42, i32* %4, align 4
  br label %45

43:                                               ; preds = %37, %33, %29, %25, %21
  %44 = load i32, i32* @STATUS_SUCCESS, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %43, %41, %13
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
