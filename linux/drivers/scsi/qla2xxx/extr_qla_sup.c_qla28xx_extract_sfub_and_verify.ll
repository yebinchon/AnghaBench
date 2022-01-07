; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla28xx_extract_sfub_and_verify.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qla2xxx/extr_qla_sup.c_qla28xx_extract_sfub_and_verify.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.scsi_qla_host = type { i32 }

@ql_log_warn = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"SFUB checksum failed, 0x%x, 0x%x\0A\00", align 1
@QLA_COMMAND_ERROR = common dso_local global i32 0, align 4
@QLA_SUCCESS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.scsi_qla_host*, i32*, i32, i32, i32*)* @qla28xx_extract_sfub_and_verify to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qla28xx_extract_sfub_and_verify(%struct.scsi_qla_host* %0, i32* %1, i32 %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.scsi_qla_host*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.scsi_qla_host* %0, %struct.scsi_qla_host** %7, align 8
  store i32* %1, i32** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  store i32 0, i32* %13, align 4
  %15 = load i32*, i32** %8, align 8
  %16 = load i32, i32* %10, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  store i32* %18, i32** %12, align 8
  %19 = load i32*, i32** %11, align 8
  %20 = load i32*, i32** %12, align 8
  %21 = call i32 @memcpy(i32* %19, i32* %20, i32 4)
  store i32 0, i32* %14, align 4
  br label %22

22:                                               ; preds = %34, %5
  %23 = load i32, i32* %14, align 4
  %24 = sext i32 %23 to i64
  %25 = icmp ult i64 %24, 1
  br i1 %25, label %26, label %37

26:                                               ; preds = %22
  %27 = load i32*, i32** %12, align 8
  %28 = load i32, i32* %14, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds i32, i32* %27, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = load i32, i32* %13, align 4
  %33 = add nsw i32 %32, %31
  store i32 %33, i32* %13, align 4
  br label %34

34:                                               ; preds = %26
  %35 = load i32, i32* %14, align 4
  %36 = add nsw i32 %35, 1
  store i32 %36, i32* %14, align 4
  br label %22

37:                                               ; preds = %22
  %38 = load i32, i32* %13, align 4
  %39 = xor i32 %38, -1
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %13, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32*, i32** %12, align 8
  %43 = load i32, i32* %14, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds i32, i32* %42, i64 %44
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %41, %46
  br i1 %47, label %48, label %59

48:                                               ; preds = %37
  %49 = load i32, i32* @ql_log_warn, align 4
  %50 = load %struct.scsi_qla_host*, %struct.scsi_qla_host** %7, align 8
  %51 = load i32, i32* %13, align 4
  %52 = load i32*, i32** %12, align 8
  %53 = load i32, i32* %14, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @ql_log(i32 %49, %struct.scsi_qla_host* %50, i32 28823, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0), i32 %51, i32 %56)
  %58 = load i32, i32* @QLA_COMMAND_ERROR, align 4
  store i32 %58, i32* %6, align 4
  br label %61

59:                                               ; preds = %37
  %60 = load i32, i32* @QLA_SUCCESS, align 4
  store i32 %60, i32* %6, align 4
  br label %61

61:                                               ; preds = %59, %48
  %62 = load i32, i32* %6, align 4
  ret i32 %62
}

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @ql_log(i32, %struct.scsi_qla_host*, i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
