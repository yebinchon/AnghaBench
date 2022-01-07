; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_randomize_seq_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_randomize_seq_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i32 }

@PDULIST_IMMEDIATE = common dso_local global i64 0, align 8
@PDULIST_UNSOLICITED = common dso_local global i64 0, align 8
@PDULIST_IMMEDIATE_AND_UNSOLICITED = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for random array.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@SEQTYPE_NORMAL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i64)* @iscsit_randomize_seq_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_randomize_seq_lists(%struct.iscsi_cmd* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %7, align 4
  %10 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %11 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %9, align 4
  %13 = load i64, i64* %5, align 8
  %14 = load i64, i64* @PDULIST_IMMEDIATE, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %20, label %16

16:                                               ; preds = %2
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* @PDULIST_UNSOLICITED, align 8
  %19 = icmp eq i64 %17, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %16, %2
  %21 = load i32, i32* %9, align 4
  %22 = add nsw i32 %21, -1
  store i32 %22, i32* %9, align 4
  br label %31

23:                                               ; preds = %16
  %24 = load i64, i64* %5, align 8
  %25 = load i64, i64* @PDULIST_IMMEDIATE_AND_UNSOLICITED, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* %9, align 4
  %29 = sub nsw i32 %28, 2
  store i32 %29, i32* %9, align 4
  br label %30

30:                                               ; preds = %27, %23
  br label %31

31:                                               ; preds = %30, %20
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %31
  store i32 0, i32* %3, align 4
  br label %87

35:                                               ; preds = %31
  %36 = load i32, i32* %9, align 4
  %37 = load i32, i32* @GFP_KERNEL, align 4
  %38 = call i32* @kcalloc(i32 %36, i32 4, i32 %37)
  store i32* %38, i32** %8, align 8
  %39 = load i32*, i32** %8, align 8
  %40 = icmp ne i32* %39, null
  br i1 %40, label %45, label %41

41:                                               ; preds = %35
  %42 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %87

45:                                               ; preds = %35
  %46 = load i32*, i32** %8, align 8
  %47 = load i32, i32* %9, align 4
  %48 = call i32 @iscsit_create_random_array(i32* %46, i32 %47)
  store i32 0, i32* %6, align 4
  br label %49

49:                                               ; preds = %81, %45
  %50 = load i32, i32* %6, align 4
  %51 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %52 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp slt i32 %50, %53
  br i1 %54, label %55, label %84

55:                                               ; preds = %49
  %56 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %57 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %56, i32 0, i32 1
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = load i32, i32* %6, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i64 %60
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @SEQTYPE_NORMAL, align 8
  %65 = icmp ne i64 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %55
  br label %81

67:                                               ; preds = %55
  %68 = load i32*, i32** %8, align 8
  %69 = load i32, i32* %7, align 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %7, align 4
  %71 = sext i32 %69 to i64
  %72 = getelementptr inbounds i32, i32* %68, i64 %71
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %75 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %74, i32 0, i32 1
  %76 = load %struct.TYPE_2__*, %struct.TYPE_2__** %75, align 8
  %77 = load i32, i32* %6, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %76, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 1
  store i32 %73, i32* %80, align 8
  br label %81

81:                                               ; preds = %67, %66
  %82 = load i32, i32* %6, align 4
  %83 = add nsw i32 %82, 1
  store i32 %83, i32* %6, align 4
  br label %49

84:                                               ; preds = %49
  %85 = load i32*, i32** %8, align 8
  %86 = call i32 @kfree(i32* %85)
  store i32 0, i32* %3, align 4
  br label %87

87:                                               ; preds = %84, %41, %34
  %88 = load i32, i32* %3, align 4
  ret i32 %88
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_create_random_array(i32*, i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
