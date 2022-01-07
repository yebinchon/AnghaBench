; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_format_pg.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_scsi_debug.c_resp_format_pg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.resp_format_pg.format_pg = private unnamed_addr constant [24 x i8] c"\03\16\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00@\00\00\00", align 16
@sdebug_sectors_per = common dso_local global i32 0, align 4
@sdebug_sector_size = common dso_local global i32 0, align 4
@sdebug_removable = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32)* @resp_format_pg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @resp_format_pg(i8* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca [24 x i8], align 16
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = bitcast [24 x i8]* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 16 %8, i8* align 16 getelementptr inbounds ([24 x i8], [24 x i8]* @__const.resp_format_pg.format_pg, i32 0, i32 0), i64 24, i1 false)
  %9 = load i8*, i8** %4, align 8
  %10 = getelementptr inbounds [24 x i8], [24 x i8]* %7, i64 0, i64 0
  %11 = call i32 @memcpy(i8* %9, i8* %10, i32 24)
  %12 = load i32, i32* @sdebug_sectors_per, align 4
  %13 = load i8*, i8** %4, align 8
  %14 = getelementptr inbounds i8, i8* %13, i64 10
  %15 = call i32 @put_unaligned_be16(i32 %12, i8* %14)
  %16 = load i32, i32* @sdebug_sector_size, align 4
  %17 = load i8*, i8** %4, align 8
  %18 = getelementptr inbounds i8, i8* %17, i64 12
  %19 = call i32 @put_unaligned_be16(i32 %16, i8* %18)
  %20 = load i64, i64* @sdebug_removable, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %3
  %23 = load i8*, i8** %4, align 8
  %24 = getelementptr inbounds i8, i8* %23, i64 20
  %25 = load i8, i8* %24, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, 32
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %24, align 1
  br label %29

29:                                               ; preds = %22, %3
  %30 = load i32, i32* %5, align 4
  %31 = icmp eq i32 1, %30
  br i1 %31, label %32, label %36

32:                                               ; preds = %29
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i64 2
  %35 = call i32 @memset(i8* %34, i32 0, i32 22)
  br label %36

36:                                               ; preds = %32, %29
  ret i32 24
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #2

declare dso_local i32 @put_unaligned_be16(i32, i8*) #2

declare dso_local i32 @memset(i8*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
