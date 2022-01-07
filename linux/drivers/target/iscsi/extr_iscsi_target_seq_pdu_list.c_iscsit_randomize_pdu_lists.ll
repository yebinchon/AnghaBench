; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_randomize_pdu_lists.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/iscsi/extr_iscsi_target_seq_pdu_list.c_iscsit_randomize_pdu_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iscsi_cmd = type { i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Unable to allocate memory for random array.\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.iscsi_cmd*, i32)* @iscsit_randomize_pdu_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @iscsit_randomize_pdu_lists(%struct.iscsi_cmd* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.iscsi_cmd*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.iscsi_cmd* %0, %struct.iscsi_cmd** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i64 0, i64* %9, align 8
  store i64 0, i64* %10, align 8
  store i64 0, i64* %11, align 8
  store i64 0, i64* %8, align 8
  br label %12

12:                                               ; preds = %77, %2
  %13 = load i64, i64* %8, align 8
  %14 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %15 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ult i64 %13, %16
  br i1 %17, label %18, label %80

18:                                               ; preds = %12
  br label %19

19:                                               ; preds = %69, %18
  %20 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %21 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %20, i32 0, i32 1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 %23
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %10, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %19
  %30 = load i64, i64* %9, align 8
  %31 = add i64 %30, 1
  store i64 %31, i64* %9, align 8
  br label %77

32:                                               ; preds = %19
  %33 = load i64, i64* %9, align 8
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i64* @kcalloc(i64 %33, i32 8, i32 %34)
  store i64* %35, i64** %7, align 8
  %36 = load i64*, i64** %7, align 8
  %37 = icmp ne i64* %36, null
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %40 = load i32, i32* @ENOMEM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %124

42:                                               ; preds = %32
  %43 = load i64*, i64** %7, align 8
  %44 = load i64, i64* %9, align 8
  %45 = call i32 @iscsit_create_random_array(i64* %43, i64 %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %66, %42
  %47 = load i32, i32* %6, align 4
  %48 = sext i32 %47 to i64
  %49 = load i64, i64* %9, align 8
  %50 = icmp ult i64 %48, %49
  br i1 %50, label %51, label %69

51:                                               ; preds = %46
  %52 = load i64*, i64** %7, align 8
  %53 = load i32, i32* %6, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i64, i64* %52, i64 %54
  %56 = load i64, i64* %55, align 8
  %57 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %58 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %57, i32 0, i32 1
  %59 = load %struct.TYPE_2__*, %struct.TYPE_2__** %58, align 8
  %60 = load i64, i64* %11, align 8
  %61 = load i32, i32* %6, align 4
  %62 = sext i32 %61 to i64
  %63 = add i64 %60, %62
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  store i64 %56, i64* %65, align 8
  br label %66

66:                                               ; preds = %51
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %6, align 4
  br label %46

69:                                               ; preds = %46
  %70 = load i64*, i64** %7, align 8
  %71 = call i32 @kfree(i64* %70)
  %72 = load i64, i64* %9, align 8
  %73 = load i64, i64* %11, align 8
  %74 = add i64 %73, %72
  store i64 %74, i64* %11, align 8
  store i64 0, i64* %9, align 8
  %75 = load i64, i64* %10, align 8
  %76 = add i64 %75, 1
  store i64 %76, i64* %10, align 8
  br label %19

77:                                               ; preds = %29
  %78 = load i64, i64* %8, align 8
  %79 = add i64 %78, 1
  store i64 %79, i64* %8, align 8
  br label %12

80:                                               ; preds = %12
  %81 = load i64, i64* %9, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %123

83:                                               ; preds = %80
  %84 = load i64, i64* %9, align 8
  %85 = load i32, i32* @GFP_KERNEL, align 4
  %86 = call i64* @kcalloc(i64 %84, i32 8, i32 %85)
  store i64* %86, i64** %7, align 8
  %87 = load i64*, i64** %7, align 8
  %88 = icmp ne i64* %87, null
  br i1 %88, label %93, label %89

89:                                               ; preds = %83
  %90 = call i32 @pr_err(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %91 = load i32, i32* @ENOMEM, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %3, align 4
  br label %124

93:                                               ; preds = %83
  %94 = load i64*, i64** %7, align 8
  %95 = load i64, i64* %9, align 8
  %96 = call i32 @iscsit_create_random_array(i64* %94, i64 %95)
  store i32 0, i32* %6, align 4
  br label %97

97:                                               ; preds = %117, %93
  %98 = load i32, i32* %6, align 4
  %99 = sext i32 %98 to i64
  %100 = load i64, i64* %9, align 8
  %101 = icmp ult i64 %99, %100
  br i1 %101, label %102, label %120

102:                                              ; preds = %97
  %103 = load i64*, i64** %7, align 8
  %104 = load i32, i32* %6, align 4
  %105 = sext i32 %104 to i64
  %106 = getelementptr inbounds i64, i64* %103, i64 %105
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.iscsi_cmd*, %struct.iscsi_cmd** %4, align 8
  %109 = getelementptr inbounds %struct.iscsi_cmd, %struct.iscsi_cmd* %108, i32 0, i32 1
  %110 = load %struct.TYPE_2__*, %struct.TYPE_2__** %109, align 8
  %111 = load i64, i64* %11, align 8
  %112 = load i32, i32* %6, align 4
  %113 = sext i32 %112 to i64
  %114 = add i64 %111, %113
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %110, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %115, i32 0, i32 1
  store i64 %107, i64* %116, align 8
  br label %117

117:                                              ; preds = %102
  %118 = load i32, i32* %6, align 4
  %119 = add nsw i32 %118, 1
  store i32 %119, i32* %6, align 4
  br label %97

120:                                              ; preds = %97
  %121 = load i64*, i64** %7, align 8
  %122 = call i32 @kfree(i64* %121)
  br label %123

123:                                              ; preds = %120, %80
  store i32 0, i32* %3, align 4
  br label %124

124:                                              ; preds = %123, %89, %38
  %125 = load i32, i32* %3, align 4
  ret i32 %125
}

declare dso_local i64* @kcalloc(i64, i32, i32) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @iscsit_create_random_array(i64*, i64) #1

declare dso_local i32 @kfree(i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
