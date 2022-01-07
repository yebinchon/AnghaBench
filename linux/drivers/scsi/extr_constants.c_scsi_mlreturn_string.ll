; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_mlreturn_string.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_constants.c_scsi_mlreturn_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.value_name_pair = type { i32, i8* }

@scsi_mlreturn_arr = common dso_local global %struct.value_name_pair* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @scsi_mlreturn_string(i32 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.value_name_pair*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load %struct.value_name_pair*, %struct.value_name_pair** @scsi_mlreturn_arr, align 8
  store %struct.value_name_pair* %6, %struct.value_name_pair** %4, align 8
  store i32 0, i32* %5, align 4
  br label %7

7:                                                ; preds = %23, %1
  %8 = load i32, i32* %5, align 4
  %9 = load %struct.value_name_pair*, %struct.value_name_pair** @scsi_mlreturn_arr, align 8
  %10 = call i32 @ARRAY_SIZE(%struct.value_name_pair* %9)
  %11 = icmp slt i32 %8, %10
  br i1 %11, label %12, label %28

12:                                               ; preds = %7
  %13 = load i32, i32* %3, align 4
  %14 = load %struct.value_name_pair*, %struct.value_name_pair** %4, align 8
  %15 = getelementptr inbounds %struct.value_name_pair, %struct.value_name_pair* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %13, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %12
  %19 = load %struct.value_name_pair*, %struct.value_name_pair** %4, align 8
  %20 = getelementptr inbounds %struct.value_name_pair, %struct.value_name_pair* %19, i32 0, i32 1
  %21 = load i8*, i8** %20, align 8
  store i8* %21, i8** %2, align 8
  br label %29

22:                                               ; preds = %12
  br label %23

23:                                               ; preds = %22
  %24 = load i32, i32* %5, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* %5, align 4
  %26 = load %struct.value_name_pair*, %struct.value_name_pair** %4, align 8
  %27 = getelementptr inbounds %struct.value_name_pair, %struct.value_name_pair* %26, i32 1
  store %struct.value_name_pair* %27, %struct.value_name_pair** %4, align 8
  br label %7

28:                                               ; preds = %7
  store i8* null, i8** %2, align 8
  br label %29

29:                                               ; preds = %28, %18
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i32 @ARRAY_SIZE(%struct.value_name_pair*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
