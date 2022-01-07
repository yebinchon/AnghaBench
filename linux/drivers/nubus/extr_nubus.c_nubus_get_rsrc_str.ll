; ModuleID = '/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_get_rsrc_str.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nubus/extr_nubus.c_nubus_get_rsrc_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nubus_dirent = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nubus_get_rsrc_str(i8* %0, %struct.nubus_dirent* %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca %struct.nubus_dirent*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8, align 1
  store i8* %0, i8** %4, align 8
  store %struct.nubus_dirent* %1, %struct.nubus_dirent** %5, align 8
  store i32 %2, i32* %6, align 4
  %10 = load i8*, i8** %4, align 8
  store i8* %10, i8** %7, align 8
  %11 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %12 = call i8* @nubus_dirptr(%struct.nubus_dirent* %11)
  store i8* %12, i8** %8, align 8
  br label %13

13:                                               ; preds = %24, %3
  %14 = load i32, i32* %6, align 4
  %15 = icmp ugt i32 %14, 1
  br i1 %15, label %16, label %30

16:                                               ; preds = %13
  %17 = load %struct.nubus_dirent*, %struct.nubus_dirent** %5, align 8
  %18 = getelementptr inbounds %struct.nubus_dirent, %struct.nubus_dirent* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call zeroext i8 @nubus_get_rom(i8** %8, i32 1, i32 %19)
  store i8 %20, i8* %9, align 1
  %21 = load i8, i8* %9, align 1
  %22 = icmp ne i8 %21, 0
  br i1 %22, label %24, label %23

23:                                               ; preds = %16
  br label %30

24:                                               ; preds = %16
  %25 = load i8, i8* %9, align 1
  %26 = load i8*, i8** %7, align 8
  %27 = getelementptr inbounds i8, i8* %26, i32 1
  store i8* %27, i8** %7, align 8
  store i8 %25, i8* %26, align 1
  %28 = load i32, i32* %6, align 4
  %29 = add i32 %28, -1
  store i32 %29, i32* %6, align 4
  br label %13

30:                                               ; preds = %23, %13
  %31 = load i32, i32* %6, align 4
  %32 = icmp ugt i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i8*, i8** %7, align 8
  store i8 0, i8* %34, align 1
  br label %35

35:                                               ; preds = %33, %30
  %36 = load i8*, i8** %7, align 8
  %37 = load i8*, i8** %4, align 8
  %38 = ptrtoint i8* %36 to i64
  %39 = ptrtoint i8* %37 to i64
  %40 = sub i64 %38, %39
  %41 = trunc i64 %40 to i32
  ret i32 %41
}

declare dso_local i8* @nubus_dirptr(%struct.nubus_dirent*) #1

declare dso_local zeroext i8 @nubus_get_rom(i8**, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
