; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_show_boot_ini_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_show_boot_ini_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qedi_ctx = type { i32 }
%struct.nvm_iscsi_initiator = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.nvm_iscsi_block = type { %struct.nvm_iscsi_initiator }

@.str = private unnamed_addr constant [6 x i8] c"%.*s\0A\00", align 1
@NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i8*)* @qedi_show_boot_ini_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @qedi_show_boot_ini_info(i8* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.qedi_ctx*, align 8
  %9 = alloca %struct.nvm_iscsi_initiator*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.nvm_iscsi_block*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.qedi_ctx*
  store %struct.qedi_ctx* %13, %struct.qedi_ctx** %8, align 8
  %14 = load %struct.qedi_ctx*, %struct.qedi_ctx** %8, align 8
  %15 = call %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx* %14)
  store %struct.nvm_iscsi_block* %15, %struct.nvm_iscsi_block** %11, align 8
  %16 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %11, align 8
  %17 = icmp ne %struct.nvm_iscsi_block* %16, null
  br i1 %17, label %19, label %18

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %34

19:                                               ; preds = %3
  %20 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %11, align 8
  %21 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %20, i32 0, i32 0
  store %struct.nvm_iscsi_initiator* %21, %struct.nvm_iscsi_initiator** %9, align 8
  %22 = load i32, i32* %6, align 4
  switch i32 %22, label %31 [
    i32 128, label %23
  ]

23:                                               ; preds = %19
  %24 = load i8*, i8** %7, align 8
  %25 = load i8*, i8** @NVM_ISCSI_CFG_ISCSI_NAME_MAX_LEN, align 8
  %26 = load %struct.nvm_iscsi_initiator*, %struct.nvm_iscsi_initiator** %9, align 8
  %27 = getelementptr inbounds %struct.nvm_iscsi_initiator, %struct.nvm_iscsi_initiator* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @sprintf(i8* %24, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* %25, i32 %29)
  store i32 %30, i32* %10, align 4
  br label %32

31:                                               ; preds = %19
  store i32 0, i32* %10, align 4
  br label %32

32:                                               ; preds = %31, %23
  %33 = load i32, i32* %10, align 4
  store i32 %33, i32* %4, align 4
  br label %34

34:                                               ; preds = %32, %18
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local %struct.nvm_iscsi_block* @qedi_get_nvram_block(%struct.qedi_ctx*) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
