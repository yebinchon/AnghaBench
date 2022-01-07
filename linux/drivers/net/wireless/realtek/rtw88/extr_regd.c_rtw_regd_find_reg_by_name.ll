; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_find_reg_by_name.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/realtek/rtw88/extr_regd.c_rtw_regd_find_reg_by_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtw_regulatory = type { i32 }

@all_chplan_map = common dso_local global %struct.rtw_regulatory* null, align 8
@rtw_defined_chplan = common dso_local global %struct.rtw_regulatory zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rtw_regd_find_reg_by_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rtw_regd_find_reg_by_name(i8* %0) #0 {
  %2 = alloca %struct.rtw_regulatory, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  br label %5

5:                                                ; preds = %28, %1
  %6 = load i32, i32* %4, align 4
  %7 = load %struct.rtw_regulatory*, %struct.rtw_regulatory** @all_chplan_map, align 8
  %8 = call i32 @ARRAY_SIZE(%struct.rtw_regulatory* %7)
  %9 = icmp ult i32 %6, %8
  br i1 %9, label %10, label %31

10:                                               ; preds = %5
  %11 = load %struct.rtw_regulatory*, %struct.rtw_regulatory** @all_chplan_map, align 8
  %12 = load i32, i32* %4, align 4
  %13 = zext i32 %12 to i64
  %14 = getelementptr inbounds %struct.rtw_regulatory, %struct.rtw_regulatory* %11, i64 %13
  %15 = getelementptr inbounds %struct.rtw_regulatory, %struct.rtw_regulatory* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i8*, i8** %3, align 8
  %18 = call i32 @memcmp(i32 %16, i8* %17, i32 2)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %27, label %20

20:                                               ; preds = %10
  %21 = load %struct.rtw_regulatory*, %struct.rtw_regulatory** @all_chplan_map, align 8
  %22 = load i32, i32* %4, align 4
  %23 = zext i32 %22 to i64
  %24 = getelementptr inbounds %struct.rtw_regulatory, %struct.rtw_regulatory* %21, i64 %23
  %25 = bitcast %struct.rtw_regulatory* %2 to i8*
  %26 = bitcast %struct.rtw_regulatory* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 %26, i64 4, i1 false)
  br label %33

27:                                               ; preds = %10
  br label %28

28:                                               ; preds = %27
  %29 = load i32, i32* %4, align 4
  %30 = add i32 %29, 1
  store i32 %30, i32* %4, align 4
  br label %5

31:                                               ; preds = %5
  %32 = bitcast %struct.rtw_regulatory* %2 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %32, i8* align 4 bitcast (%struct.rtw_regulatory* @rtw_defined_chplan to i8*), i64 4, i1 false)
  br label %33

33:                                               ; preds = %31, %20
  %34 = getelementptr inbounds %struct.rtw_regulatory, %struct.rtw_regulatory* %2, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  ret i32 %35
}

declare dso_local i32 @ARRAY_SIZE(%struct.rtw_regulatory*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
