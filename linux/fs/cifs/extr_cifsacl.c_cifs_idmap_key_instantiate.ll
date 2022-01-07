; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_cifs_idmap_key_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_cifs_idmap_key_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.key = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i8** }
%struct.key_preparsed_payload = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.key*, %struct.key_preparsed_payload*)* @cifs_idmap_key_instantiate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cifs_idmap_key_instantiate(%struct.key* %0, %struct.key_preparsed_payload* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.key*, align 8
  %5 = alloca %struct.key_preparsed_payload*, align 8
  %6 = alloca i8*, align 8
  store %struct.key* %0, %struct.key** %4, align 8
  store %struct.key_preparsed_payload* %1, %struct.key_preparsed_payload** %5, align 8
  %7 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %8 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = icmp ule i64 %10, 8
  br i1 %11, label %12, label %27

12:                                               ; preds = %2
  %13 = load %struct.key*, %struct.key** %4, align 8
  %14 = getelementptr inbounds %struct.key, %struct.key* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i8**, i8*** %15, align 8
  %17 = getelementptr inbounds i8*, i8** %16, i64 0
  store i8* null, i8** %17, align 8
  %18 = load %struct.key*, %struct.key** %4, align 8
  %19 = getelementptr inbounds %struct.key, %struct.key* %18, i32 0, i32 1
  %20 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %21 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %24 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @memcpy(%struct.TYPE_2__* %19, i32 %22, i32 %25)
  br label %48

27:                                               ; preds = %2
  %28 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %29 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %32 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call i8* @kmemdup(i32 %30, i32 %33, i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i8*, i8** %6, align 8
  %37 = icmp ne i8* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %27
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %54

41:                                               ; preds = %27
  %42 = load i8*, i8** %6, align 8
  %43 = load %struct.key*, %struct.key** %4, align 8
  %44 = getelementptr inbounds %struct.key, %struct.key* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i8**, i8*** %45, align 8
  %47 = getelementptr inbounds i8*, i8** %46, i64 0
  store i8* %42, i8** %47, align 8
  br label %48

48:                                               ; preds = %41, %12
  %49 = load %struct.key_preparsed_payload*, %struct.key_preparsed_payload** %5, align 8
  %50 = getelementptr inbounds %struct.key_preparsed_payload, %struct.key_preparsed_payload* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.key*, %struct.key** %4, align 8
  %53 = getelementptr inbounds %struct.key, %struct.key* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %48, %38
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @memcpy(%struct.TYPE_2__*, i32, i32) #1

declare dso_local i8* @kmemdup(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
