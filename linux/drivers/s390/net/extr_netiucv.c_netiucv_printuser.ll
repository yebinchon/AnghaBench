; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_printuser.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/net/extr_netiucv.c_netiucv_printuser.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.iucv_connection = type { i8*, i8* }

@netiucv_printuser.tmp_uid = internal global [9 x i8] zeroinitializer, align 1
@netiucv_printuser.tmp_udat = internal global [17 x i8] zeroinitializer, align 16
@netiucv_printuser.buf = internal global [100 x i8] zeroinitializer, align 16
@iucvMagic_ebcdic = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s.%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.iucv_connection*)* @netiucv_printuser to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @netiucv_printuser(%struct.iucv_connection* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.iucv_connection*, align 8
  store %struct.iucv_connection* %0, %struct.iucv_connection** %3, align 8
  %4 = load %struct.iucv_connection*, %struct.iucv_connection** %3, align 8
  %5 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %4, i32 0, i32 0
  %6 = load i8*, i8** %5, align 8
  %7 = load i32, i32* @iucvMagic_ebcdic, align 4
  %8 = call i64 @memcmp(i8* %6, i32 %7, i32 16)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %24

10:                                               ; preds = %1
  store i8 0, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @netiucv_printuser.tmp_uid, i64 0, i64 8), align 1
  store i8 0, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @netiucv_printuser.tmp_udat, i64 0, i64 16), align 16
  %11 = load %struct.iucv_connection*, %struct.iucv_connection** %3, align 8
  %12 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %11, i32 0, i32 1
  %13 = load i8*, i8** %12, align 8
  %14 = call i8* @netiucv_printname(i8* %13, i32 8)
  %15 = call i32 @memcpy(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @netiucv_printuser.tmp_uid, i64 0, i64 0), i8* %14, i32 8)
  %16 = load %struct.iucv_connection*, %struct.iucv_connection** %3, align 8
  %17 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %16, i32 0, i32 0
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 @memcpy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @netiucv_printuser.tmp_udat, i64 0, i64 0), i8* %18, i32 16)
  %20 = call i32 @EBCASC(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @netiucv_printuser.tmp_udat, i64 0, i64 0), i32 16)
  %21 = call i8* @netiucv_printname(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @netiucv_printuser.tmp_udat, i64 0, i64 0), i32 16)
  %22 = call i32 @memcpy(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @netiucv_printuser.tmp_udat, i64 0, i64 0), i8* %21, i32 16)
  %23 = call i32 @sprintf(i8* getelementptr inbounds ([100 x i8], [100 x i8]* @netiucv_printuser.buf, i64 0, i64 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([9 x i8], [9 x i8]* @netiucv_printuser.tmp_uid, i64 0, i64 0), i8* getelementptr inbounds ([17 x i8], [17 x i8]* @netiucv_printuser.tmp_udat, i64 0, i64 0))
  store i8* getelementptr inbounds ([100 x i8], [100 x i8]* @netiucv_printuser.buf, i64 0, i64 0), i8** %2, align 8
  br label %29

24:                                               ; preds = %1
  %25 = load %struct.iucv_connection*, %struct.iucv_connection** %3, align 8
  %26 = getelementptr inbounds %struct.iucv_connection, %struct.iucv_connection* %25, i32 0, i32 1
  %27 = load i8*, i8** %26, align 8
  %28 = call i8* @netiucv_printname(i8* %27, i32 8)
  store i8* %28, i8** %2, align 8
  br label %29

29:                                               ; preds = %24, %10
  %30 = load i8*, i8** %2, align 8
  ret i8* %30
}

declare dso_local i64 @memcmp(i8*, i32, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i8* @netiucv_printname(i8*, i32) #1

declare dso_local i32 @EBCASC(i8*, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
