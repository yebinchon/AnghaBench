; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_seq_write_rsrc_mem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_seq_write_rsrc_mem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.nubus_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @nubus_seq_write_rsrc_mem(%struct.seq_file* %0, %struct.nubus_dirent* %1, i32 %2) #0 {
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca %struct.nubus_dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca [32 x i64], align 16
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store %struct.nubus_dirent* %1, %struct.nubus_dirent** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 256, i32* %8, align 4
  %11 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %12 = call i8* @nubus_dirptr(%struct.nubus_dirent* %11)
  store i8* %12, i8** %9, align 8
  br label %13

13:                                               ; preds = %34, %3
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %8, align 4
  %16 = icmp uge i32 %14, %15
  br i1 %16, label %17, label %42

17:                                               ; preds = %13
  store i32 0, i32* %10, align 4
  br label %18

18:                                               ; preds = %31, %17
  %19 = load i32, i32* %10, align 4
  %20 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %21 = call i32 @ARRAY_SIZE(i64* %20)
  %22 = icmp ult i32 %19, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %18
  %24 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %25 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i64 @nubus_get_rom(i8** %9, i32 8, i32 %26)
  %28 = load i32, i32* %10, align 4
  %29 = zext i32 %28 to i64
  %30 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 %29
  store i64 %27, i64* %30, align 8
  br label %31

31:                                               ; preds = %23
  %32 = load i32, i32* %10, align 4
  %33 = add i32 %32, 1
  store i32 %33, i32* %10, align 4
  br label %18

34:                                               ; preds = %18
  %35 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %36 = getelementptr inbounds [32 x i64], [32 x i64]* %7, i64 0, i64 0
  %37 = load i32, i32* %8, align 4
  %38 = call i32 @seq_write(%struct.seq_file* %35, i64* %36, i32 %37)
  %39 = load i32, i32* %8, align 4
  %40 = load i32, i32* %6, align 4
  %41 = sub i32 %40, %39
  store i32 %41, i32* %6, align 4
  br label %13

42:                                               ; preds = %13
  br label %43

43:                                               ; preds = %47, %42
  %44 = load i32, i32* %6, align 4
  %45 = add i32 %44, -1
  store i32 %45, i32* %6, align 4
  %46 = icmp ne i32 %44, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %43
  %48 = load %struct.seq_file*, %struct.seq_file** %4, align 8
  %49 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %50 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @nubus_get_rom(i8** %9, i32 1, i32 %51)
  %53 = call i32 @seq_putc(%struct.seq_file* %48, i64 %52)
  br label %43

54:                                               ; preds = %43
  ret void
}

declare dso_local i8* @nubus_dirptr(%struct.nubus_dirent*) #1

declare dso_local i32 @ARRAY_SIZE(i64*) #1

declare dso_local i64 @nubus_get_rom(i8**, i32, i32) #1

declare dso_local i32 @seq_write(%struct.seq_file*, i64*, i32) #1

declare dso_local i32 @seq_putc(%struct.seq_file*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
