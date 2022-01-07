; ModuleID = '/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_write_tag_64_packet.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ecryptfs/extr_keystore.c_write_tag_64_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ecryptfs_session_key = type { i32, i8* }

@ECRYPTFS_SIG_SIZE_HEX = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"Unable to allocate memory\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@ECRYPTFS_TAG_64_PACKET_TYPE = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [70 x i8] c"Error generating tag 64 packet header; cannot generate packet length\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.ecryptfs_session_key*, i8**, i64*)* @write_tag_64_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_tag_64_packet(i8* %0, %struct.ecryptfs_session_key* %1, i8** %2, i64* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ecryptfs_session_key*, align 8
  %7 = alloca i8**, align 8
  %8 = alloca i64*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ecryptfs_session_key* %1, %struct.ecryptfs_session_key** %6, align 8
  store i8** %2, i8*** %7, align 8
  store i64* %3, i64** %8, align 8
  store i64 0, i64* %9, align 8
  %14 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %15 = add nsw i32 5, %14
  %16 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %6, align 8
  %17 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %15, %18
  %20 = sext i32 %19 to i64
  store i64 %20, i64* %10, align 8
  %21 = load i64, i64* %10, align 8
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call i8* @kmalloc(i64 %21, i32 %22)
  %24 = load i8**, i8*** %7, align 8
  store i8* %23, i8** %24, align 8
  %25 = load i8**, i8*** %7, align 8
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %12, align 8
  %27 = load i8*, i8** %12, align 8
  %28 = icmp ne i8* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %4
  %30 = load i32, i32* @KERN_ERR, align 4
  %31 = call i32 @ecryptfs_printk(i32 %30, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %98

34:                                               ; preds = %4
  %35 = load i8, i8* @ECRYPTFS_TAG_64_PACKET_TYPE, align 1
  %36 = load i8*, i8** %12, align 8
  %37 = load i64, i64* %9, align 8
  %38 = add i64 %37, 1
  store i64 %38, i64* %9, align 8
  %39 = getelementptr inbounds i8, i8* %36, i64 %37
  store i8 %35, i8* %39, align 1
  %40 = load i8*, i8** %12, align 8
  %41 = load i64, i64* %9, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %44 = call i32 @ecryptfs_write_packet_length(i8* %42, i32 %43, i64* %11)
  store i32 %44, i32* %13, align 4
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %34
  %48 = load i32, i32* @KERN_ERR, align 4
  %49 = call i32 @ecryptfs_printk(i32 %48, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %98

50:                                               ; preds = %34
  %51 = load i64, i64* %11, align 8
  %52 = load i64, i64* %9, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %9, align 8
  %54 = load i8*, i8** %12, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  %57 = load i8*, i8** %5, align 8
  %58 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %59 = call i32 @memcpy(i8* %56, i8* %57, i32 %58)
  %60 = load i32, i32* @ECRYPTFS_SIG_SIZE_HEX, align 4
  %61 = sext i32 %60 to i64
  %62 = load i64, i64* %9, align 8
  %63 = add i64 %62, %61
  store i64 %63, i64* %9, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = load i64, i64* %9, align 8
  %66 = getelementptr inbounds i8, i8* %64, i64 %65
  %67 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %6, align 8
  %68 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @ecryptfs_write_packet_length(i8* %66, i32 %69, i64* %11)
  store i32 %70, i32* %13, align 4
  %71 = load i32, i32* %13, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %50
  %74 = load i32, i32* @KERN_ERR, align 4
  %75 = call i32 @ecryptfs_printk(i32 %74, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  br label %98

76:                                               ; preds = %50
  %77 = load i64, i64* %11, align 8
  %78 = load i64, i64* %9, align 8
  %79 = add i64 %78, %77
  store i64 %79, i64* %9, align 8
  %80 = load i8*, i8** %12, align 8
  %81 = load i64, i64* %9, align 8
  %82 = getelementptr inbounds i8, i8* %80, i64 %81
  %83 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %6, align 8
  %84 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %83, i32 0, i32 1
  %85 = load i8*, i8** %84, align 8
  %86 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %6, align 8
  %87 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @memcpy(i8* %82, i8* %85, i32 %88)
  %90 = load %struct.ecryptfs_session_key*, %struct.ecryptfs_session_key** %6, align 8
  %91 = getelementptr inbounds %struct.ecryptfs_session_key, %struct.ecryptfs_session_key* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = sext i32 %92 to i64
  %94 = load i64, i64* %9, align 8
  %95 = add i64 %94, %93
  store i64 %95, i64* %9, align 8
  %96 = load i64, i64* %9, align 8
  %97 = load i64*, i64** %8, align 8
  store i64 %96, i64* %97, align 8
  br label %98

98:                                               ; preds = %76, %73, %47, %29
  %99 = load i32, i32* %13, align 4
  ret i32 %99
}

declare dso_local i8* @kmalloc(i64, i32) #1

declare dso_local i32 @ecryptfs_printk(i32, i8*) #1

declare dso_local i32 @ecryptfs_write_packet_length(i8*, i32, i64*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
