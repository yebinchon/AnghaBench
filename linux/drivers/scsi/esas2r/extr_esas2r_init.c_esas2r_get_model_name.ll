; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_get_model_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_init.c_esas2r_get_model_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_adapter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"ATTO ExpressSAS R680\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"ATTO ExpressSAS R608\00", align 1
@.str.2 = private unnamed_addr constant [21 x i8] c"ATTO ExpressSAS R60F\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"ATTO ExpressSAS R6F0\00", align 1
@.str.4 = private unnamed_addr constant [21 x i8] c"ATTO ExpressSAS R644\00", align 1
@.str.5 = private unnamed_addr constant [21 x i8] c"ATTO ExpressSAS R648\00", align 1
@.str.6 = private unnamed_addr constant [28 x i8] c"ATTO ThunderStream SC 3808D\00", align 1
@.str.7 = private unnamed_addr constant [28 x i8] c"ATTO ThunderStream SC 3808E\00", align 1
@.str.8 = private unnamed_addr constant [25 x i8] c"ATTO ThunderLink SH 1068\00", align 1
@.str.9 = private unnamed_addr constant [20 x i8] c"ATTO SAS Controller\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @esas2r_get_model_name(%struct.esas2r_adapter* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.esas2r_adapter*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %3, align 8
  %4 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %3, align 8
  %5 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %4, i32 0, i32 0
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %18 [
    i32 132, label %9
    i32 136, label %10
    i32 135, label %11
    i32 131, label %12
    i32 134, label %13
    i32 133, label %14
    i32 129, label %15
    i32 128, label %16
    i32 130, label %17
  ]

9:                                                ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8** %2, align 8
  br label %19

10:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i8** %2, align 8
  br label %19

11:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.2, i64 0, i64 0), i8** %2, align 8
  br label %19

12:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0), i8** %2, align 8
  br label %19

13:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.4, i64 0, i64 0), i8** %2, align 8
  br label %19

14:                                               ; preds = %1
  store i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.5, i64 0, i64 0), i8** %2, align 8
  br label %19

15:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.6, i64 0, i64 0), i8** %2, align 8
  br label %19

16:                                               ; preds = %1
  store i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.7, i64 0, i64 0), i8** %2, align 8
  br label %19

17:                                               ; preds = %1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.8, i64 0, i64 0), i8** %2, align 8
  br label %19

18:                                               ; preds = %1
  store i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.9, i64 0, i64 0), i8** %2, align 8
  br label %19

19:                                               ; preds = %18, %17, %16, %15, %14, %13, %12, %11, %10, %9
  %20 = load i8*, i8** %2, align 8
  ret i8* %20
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
