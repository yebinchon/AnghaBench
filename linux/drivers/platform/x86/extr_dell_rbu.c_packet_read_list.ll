; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell_rbu.c_packet_read_list.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_dell_rbu.c_packet_read_list.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.list_head* }
%struct.list_head = type { %struct.list_head* }

@rbu_data = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@ENOMEM = common dso_local global i32 0, align 4
@packet_data_head = common dso_local global %struct.TYPE_6__ zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64*)* @packet_read_list to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @packet_read_list(i8* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64* %1, i64** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %12 = load i8*, i8** %4, align 8
  store i8* %12, i8** %11, align 8
  %13 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rbu_data, i32 0, i32 0), align 8
  %14 = icmp eq i64 0, %13
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOMEM, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %59

18:                                               ; preds = %2
  %19 = load i64*, i64** %5, align 8
  %20 = load i64, i64* %19, align 8
  %21 = trunc i64 %20 to i32
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rbu_data, i32 0, i32 1), align 8
  store i32 %22, i32* %9, align 4
  %23 = load %struct.list_head*, %struct.list_head** getelementptr inbounds (%struct.TYPE_6__, %struct.TYPE_6__* @packet_data_head, i32 0, i32 0, i32 0), align 8
  store %struct.list_head* %23, %struct.list_head** %6, align 8
  br label %24

24:                                               ; preds = %48, %18
  %25 = load %struct.list_head*, %struct.list_head** %6, align 8
  %26 = call i32 @list_empty(%struct.list_head* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  br i1 %28, label %29, label %52

29:                                               ; preds = %24
  %30 = load i8*, i8** %11, align 8
  %31 = load %struct.list_head*, %struct.list_head** %6, align 8
  %32 = load i32, i32* %10, align 4
  %33 = load i32, i32* %9, align 4
  %34 = call i32 @do_packet_read(i8* %30, %struct.list_head* %31, i32 %32, i32 %33, i32* %7)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = load i32, i32* %10, align 4
  %37 = sub nsw i32 %36, %35
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %8, align 4
  %39 = load i32, i32* %9, align 4
  %40 = add nsw i32 %39, %38
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %8, align 4
  %42 = load i8*, i8** %11, align 8
  %43 = sext i32 %41 to i64
  %44 = getelementptr inbounds i8, i8* %42, i64 %43
  store i8* %44, i8** %11, align 8
  %45 = load i32, i32* %10, align 4
  %46 = icmp eq i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %29
  br label %52

48:                                               ; preds = %29
  %49 = load %struct.list_head*, %struct.list_head** %6, align 8
  %50 = getelementptr inbounds %struct.list_head, %struct.list_head* %49, i32 0, i32 0
  %51 = load %struct.list_head*, %struct.list_head** %50, align 8
  store %struct.list_head* %51, %struct.list_head** %6, align 8
  br label %24

52:                                               ; preds = %47, %24
  %53 = load i32, i32* %9, align 4
  %54 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rbu_data, i32 0, i32 1), align 8
  %55 = sub nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = load i64*, i64** %5, align 8
  store i64 %56, i64* %57, align 8
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @rbu_data, i32 0, i32 1), align 8
  store i32 0, i32* %3, align 4
  br label %59

59:                                               ; preds = %52, %15
  %60 = load i32, i32* %3, align 4
  ret i32 %60
}

declare dso_local i32 @list_empty(%struct.list_head*) #1

declare dso_local i32 @do_packet_read(i8*, %struct.list_head*, i32, i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
