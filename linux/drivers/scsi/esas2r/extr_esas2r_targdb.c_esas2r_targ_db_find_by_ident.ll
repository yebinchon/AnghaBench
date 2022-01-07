; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_find_by_ident.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/esas2r/extr_esas2r_targdb.c_esas2r_targ_db_find_by_ident.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.esas2r_target = type { i64, i32* }
%struct.esas2r_adapter = type { %struct.esas2r_target*, %struct.esas2r_target* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.esas2r_target* @esas2r_targ_db_find_by_ident(%struct.esas2r_adapter* %0, i8* %1, i64 %2) #0 {
  %4 = alloca %struct.esas2r_target*, align 8
  %5 = alloca %struct.esas2r_adapter*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.esas2r_target*, align 8
  store %struct.esas2r_adapter* %0, %struct.esas2r_adapter** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %9 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %10 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %9, i32 0, i32 1
  %11 = load %struct.esas2r_target*, %struct.esas2r_target** %10, align 8
  store %struct.esas2r_target* %11, %struct.esas2r_target** %8, align 8
  br label %12

12:                                               ; preds = %36, %3
  %13 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %14 = load %struct.esas2r_adapter*, %struct.esas2r_adapter** %5, align 8
  %15 = getelementptr inbounds %struct.esas2r_adapter, %struct.esas2r_adapter* %14, i32 0, i32 0
  %16 = load %struct.esas2r_target*, %struct.esas2r_target** %15, align 8
  %17 = icmp ult %struct.esas2r_target* %13, %16
  br i1 %17, label %18, label %39

18:                                               ; preds = %12
  %19 = load i64, i64* %7, align 8
  %20 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %21 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %19, %22
  br i1 %23, label %24, label %35

24:                                               ; preds = %18
  %25 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %26 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %25, i32 0, i32 1
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i8*, i8** %6, align 8
  %30 = load i64, i64* %7, align 8
  %31 = call i64 @memcmp(i32* %28, i8* %29, i64 %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %24
  %34 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  store %struct.esas2r_target* %34, %struct.esas2r_target** %4, align 8
  br label %40

35:                                               ; preds = %24, %18
  br label %36

36:                                               ; preds = %35
  %37 = load %struct.esas2r_target*, %struct.esas2r_target** %8, align 8
  %38 = getelementptr inbounds %struct.esas2r_target, %struct.esas2r_target* %37, i32 1
  store %struct.esas2r_target* %38, %struct.esas2r_target** %8, align 8
  br label %12

39:                                               ; preds = %12
  store %struct.esas2r_target* null, %struct.esas2r_target** %4, align 8
  br label %40

40:                                               ; preds = %39, %33
  %41 = load %struct.esas2r_target*, %struct.esas2r_target** %4, align 8
  ret %struct.esas2r_target* %41
}

declare dso_local i64 @memcmp(i32*, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
