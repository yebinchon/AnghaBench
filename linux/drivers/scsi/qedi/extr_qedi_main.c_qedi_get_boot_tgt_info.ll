; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_boot_tgt_info.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/qedi/extr_qedi_main.c_qedi_get_boot_tgt_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvm_iscsi_block = type { %struct.TYPE_10__*, %struct.TYPE_6__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i32 }
%struct.qedi_boot_target = type { i32, i32, i32 }

@NVM_ISCSI_CFG_GEN_IPV6_ENABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"%s\0A\00", align 1
@IPV6_LEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"%pI6\0A\00", align 1
@IPV4_LEN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [6 x i8] c"%pI4\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nvm_iscsi_block*, %struct.qedi_boot_target*, i64)* @qedi_get_boot_tgt_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qedi_get_boot_tgt_info(%struct.nvm_iscsi_block* %0, %struct.qedi_boot_target* %1, i64 %2) #0 {
  %4 = alloca %struct.nvm_iscsi_block*, align 8
  %5 = alloca %struct.qedi_boot_target*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.nvm_iscsi_block* %0, %struct.nvm_iscsi_block** %4, align 8
  store %struct.qedi_boot_target* %1, %struct.qedi_boot_target** %5, align 8
  store i64 %2, i64* %6, align 8
  %8 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %4, align 8
  %9 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %8, i32 0, i32 1
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @NVM_ISCSI_CFG_GEN_IPV6_ENABLED, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  store i32 %17, i32* %7, align 4
  %18 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %5, align 8
  %19 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %4, align 8
  %22 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %21, i32 0, i32 0
  %23 = load %struct.TYPE_10__*, %struct.TYPE_10__** %22, align 8
  %24 = load i64, i64* %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %23, i64 %24
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = call i32 @snprintf(i32 %20, i32 4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %5, align 8
  %32 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %49

35:                                               ; preds = %3
  %36 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %5, align 8
  %37 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @IPV6_LEN, align 4
  %40 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %4, align 8
  %41 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load i64, i64* %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i64 %43
  %45 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 0
  %47 = load i8*, i8** %46, align 8
  %48 = call i32 @snprintf(i32 %38, i32 %39, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* %47)
  br label %63

49:                                               ; preds = %3
  %50 = load %struct.qedi_boot_target*, %struct.qedi_boot_target** %5, align 8
  %51 = getelementptr inbounds %struct.qedi_boot_target, %struct.qedi_boot_target* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @IPV4_LEN, align 4
  %54 = load %struct.nvm_iscsi_block*, %struct.nvm_iscsi_block** %4, align 8
  %55 = getelementptr inbounds %struct.nvm_iscsi_block, %struct.nvm_iscsi_block* %54, i32 0, i32 0
  %56 = load %struct.TYPE_10__*, %struct.TYPE_10__** %55, align 8
  %57 = load i64, i64* %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %56, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 0
  %61 = load i8*, i8** %60, align 8
  %62 = call i32 @snprintf(i32 %52, i32 %53, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0), i8* %61)
  br label %63

63:                                               ; preds = %49, %35
  ret void
}

declare dso_local i32 @snprintf(i32, i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
