; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_target_parse_pr_out_transport_id.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_fabric_lib.c_target_parse_pr_out_transport_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_portal_group = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Unknown proto_id: 0x%02x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @target_parse_pr_out_transport_id(%struct.se_portal_group* %0, i8* %1, i32* %2, i8** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.se_portal_group*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca i32, align 4
  store %struct.se_portal_group* %0, %struct.se_portal_group** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8** %3, i8*** %9, align 8
  %11 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %12 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  switch i32 %13, label %22 [
    i32 130, label %14
    i32 129, label %15
    i32 128, label %15
    i32 132, label %15
    i32 131, label %16
  ]

14:                                               ; preds = %4
  store i32 4, i32* %10, align 4
  br label %27

15:                                               ; preds = %4, %4, %4
  store i32 8, i32* %10, align 4
  br label %27

16:                                               ; preds = %4
  %17 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %18 = load i8*, i8** %7, align 8
  %19 = load i32*, i32** %8, align 8
  %20 = load i8**, i8*** %9, align 8
  %21 = call i8* @iscsi_parse_pr_out_transport_id(%struct.se_portal_group* %17, i8* %18, i32* %19, i8** %20)
  store i8* %21, i8** %5, align 8
  br label %34

22:                                               ; preds = %4
  %23 = load %struct.se_portal_group*, %struct.se_portal_group** %6, align 8
  %24 = getelementptr inbounds %struct.se_portal_group, %struct.se_portal_group* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %25)
  store i8* null, i8** %5, align 8
  br label %34

27:                                               ; preds = %15, %14
  %28 = load i8**, i8*** %9, align 8
  store i8* null, i8** %28, align 8
  %29 = load i32*, i32** %8, align 8
  store i32 24, i32* %29, align 4
  %30 = load i8*, i8** %7, align 8
  %31 = load i32, i32* %10, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8, i8* %30, i64 %32
  store i8* %33, i8** %5, align 8
  br label %34

34:                                               ; preds = %27, %22, %16
  %35 = load i8*, i8** %5, align 8
  ret i8* %35
}

declare dso_local i8* @iscsi_parse_pr_out_transport_id(%struct.se_portal_group*, i8*, i32*, i8**) #1

declare dso_local i32 @pr_err(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
