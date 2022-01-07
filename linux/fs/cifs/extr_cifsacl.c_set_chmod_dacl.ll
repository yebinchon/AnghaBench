; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_set_chmod_dacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsacl.c_set_chmod_dacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i8**, i32* }
%struct.cifs_sid = type { i32 }
%struct.cifs_acl = type { i8*, i8* }
%struct.cifs_ace = type { i32, i8*, %struct.TYPE_3__, i64, i32 }
%struct.TYPE_3__ = type { i32, i32, i8**, i32* }

@ACCESS_ALLOWED = common dso_local global i32 0, align 4
@NUM_AUTHS = common dso_local global i32 0, align 4
@sid_unix_NFS_mode = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@S_IRWXU = common dso_local global i32 0, align 4
@S_IRWXG = common dso_local global i32 0, align 4
@sid_everyone = common dso_local global %struct.cifs_sid zeroinitializer, align 4
@S_IRWXO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cifs_acl*, %struct.cifs_sid*, %struct.cifs_sid*, i32, i32)* @set_chmod_dacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_chmod_dacl(%struct.cifs_acl* %0, %struct.cifs_sid* %1, %struct.cifs_sid* %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.cifs_acl*, align 8
  %7 = alloca %struct.cifs_sid*, align 8
  %8 = alloca %struct.cifs_sid*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.cifs_acl*, align 8
  %14 = alloca %struct.cifs_ace*, align 8
  %15 = alloca i32, align 4
  store %struct.cifs_acl* %0, %struct.cifs_acl** %6, align 8
  store %struct.cifs_sid* %1, %struct.cifs_sid** %7, align 8
  store %struct.cifs_sid* %2, %struct.cifs_sid** %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  %16 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %17 = bitcast %struct.cifs_acl* %16 to i8*
  %18 = getelementptr inbounds i8, i8* %17, i64 16
  %19 = bitcast i8* %18 to %struct.cifs_acl*
  store %struct.cifs_acl* %19, %struct.cifs_acl** %13, align 8
  %20 = load i32, i32* %10, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %94

22:                                               ; preds = %5
  %23 = load %struct.cifs_acl*, %struct.cifs_acl** %13, align 8
  %24 = bitcast %struct.cifs_acl* %23 to i8*
  %25 = load i32, i32* %11, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds i8, i8* %24, i64 %26
  %28 = bitcast i8* %27 to %struct.cifs_ace*
  store %struct.cifs_ace* %28, %struct.cifs_ace** %14, align 8
  %29 = load i32, i32* @ACCESS_ALLOWED, align 4
  %30 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %31 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %30, i32 0, i32 4
  store i32 %29, i32* %31, align 8
  %32 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %33 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %32, i32 0, i32 0
  store i32 0, i32* %33, align 8
  %34 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %35 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %34, i32 0, i32 3
  store i64 0, i64* %35, align 8
  %36 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %37 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %36, i32 0, i32 2
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  store i32 3, i32* %38, align 8
  %39 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %40 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %39, i32 0, i32 2
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i32 1, i32* %41, align 4
  store i32 0, i32* %15, align 4
  br label %42

42:                                               ; preds = %59, %22
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* @NUM_AUTHS, align 4
  %45 = icmp slt i32 %43, %44
  br i1 %45, label %46, label %62

46:                                               ; preds = %42
  %47 = load i32*, i32** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sid_unix_NFS_mode, i32 0, i32 1), align 8
  %48 = load i32, i32* %15, align 4
  %49 = sext i32 %48 to i64
  %50 = getelementptr inbounds i32, i32* %47, i64 %49
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %53 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* %15, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds i32, i32* %55, i64 %57
  store i32 %51, i32* %58, align 4
  br label %59

59:                                               ; preds = %46
  %60 = load i32, i32* %15, align 4
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %15, align 4
  br label %42

62:                                               ; preds = %42
  %63 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sid_unix_NFS_mode, i32 0, i32 0), align 8
  %64 = getelementptr inbounds i8*, i8** %63, i64 0
  %65 = load i8*, i8** %64, align 8
  %66 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %67 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %66, i32 0, i32 2
  %68 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %67, i32 0, i32 2
  %69 = load i8**, i8*** %68, align 8
  %70 = getelementptr inbounds i8*, i8** %69, i64 0
  store i8* %65, i8** %70, align 8
  %71 = load i8**, i8*** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @sid_unix_NFS_mode, i32 0, i32 0), align 8
  %72 = getelementptr inbounds i8*, i8** %71, i64 1
  %73 = load i8*, i8** %72, align 8
  %74 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %75 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %74, i32 0, i32 2
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 2
  %77 = load i8**, i8*** %76, align 8
  %78 = getelementptr inbounds i8*, i8** %77, i64 1
  store i8* %73, i8** %78, align 8
  %79 = load i32, i32* %9, align 4
  %80 = and i32 %79, 4095
  %81 = call i8* @cpu_to_le32(i32 %80)
  %82 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %83 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %82, i32 0, i32 2
  %84 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %83, i32 0, i32 2
  %85 = load i8**, i8*** %84, align 8
  %86 = getelementptr inbounds i8*, i8** %85, i64 2
  store i8* %81, i8** %86, align 8
  %87 = call i8* @cpu_to_le16(i32 28)
  %88 = load %struct.cifs_ace*, %struct.cifs_ace** %14, align 8
  %89 = getelementptr inbounds %struct.cifs_ace, %struct.cifs_ace* %88, i32 0, i32 1
  store i8* %87, i8** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = add nsw i32 %90, 28
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %12, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %12, align 4
  br label %94

94:                                               ; preds = %62, %5
  %95 = load %struct.cifs_acl*, %struct.cifs_acl** %13, align 8
  %96 = bitcast %struct.cifs_acl* %95 to i8*
  %97 = load i32, i32* %11, align 4
  %98 = sext i32 %97 to i64
  %99 = getelementptr inbounds i8, i8* %96, i64 %98
  %100 = bitcast i8* %99 to %struct.cifs_ace*
  %101 = load %struct.cifs_sid*, %struct.cifs_sid** %7, align 8
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* @S_IRWXU, align 4
  %104 = call i64 @fill_ace_for_sid(%struct.cifs_ace* %100, %struct.cifs_sid* %101, i32 %102, i32 %103)
  %105 = load i32, i32* %11, align 4
  %106 = sext i32 %105 to i64
  %107 = add nsw i64 %106, %104
  %108 = trunc i64 %107 to i32
  store i32 %108, i32* %11, align 4
  %109 = load i32, i32* %12, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %12, align 4
  %111 = load %struct.cifs_acl*, %struct.cifs_acl** %13, align 8
  %112 = bitcast %struct.cifs_acl* %111 to i8*
  %113 = load i32, i32* %11, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i8, i8* %112, i64 %114
  %116 = bitcast i8* %115 to %struct.cifs_ace*
  %117 = load %struct.cifs_sid*, %struct.cifs_sid** %8, align 8
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @S_IRWXG, align 4
  %120 = call i64 @fill_ace_for_sid(%struct.cifs_ace* %116, %struct.cifs_sid* %117, i32 %118, i32 %119)
  %121 = load i32, i32* %11, align 4
  %122 = sext i32 %121 to i64
  %123 = add nsw i64 %122, %120
  %124 = trunc i64 %123 to i32
  store i32 %124, i32* %11, align 4
  %125 = load i32, i32* %12, align 4
  %126 = add nsw i32 %125, 1
  store i32 %126, i32* %12, align 4
  %127 = load %struct.cifs_acl*, %struct.cifs_acl** %13, align 8
  %128 = bitcast %struct.cifs_acl* %127 to i8*
  %129 = load i32, i32* %11, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i8, i8* %128, i64 %130
  %132 = bitcast i8* %131 to %struct.cifs_ace*
  %133 = load i32, i32* %9, align 4
  %134 = load i32, i32* @S_IRWXO, align 4
  %135 = call i64 @fill_ace_for_sid(%struct.cifs_ace* %132, %struct.cifs_sid* @sid_everyone, i32 %133, i32 %134)
  %136 = load i32, i32* %11, align 4
  %137 = sext i32 %136 to i64
  %138 = add nsw i64 %137, %135
  %139 = trunc i64 %138 to i32
  store i32 %139, i32* %11, align 4
  %140 = load i32, i32* %12, align 4
  %141 = add nsw i32 %140, 1
  store i32 %141, i32* %12, align 4
  %142 = load i32, i32* %12, align 4
  %143 = call i8* @cpu_to_le32(i32 %142)
  %144 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %145 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %144, i32 0, i32 1
  store i8* %143, i8** %145, align 8
  %146 = load i32, i32* %11, align 4
  %147 = sext i32 %146 to i64
  %148 = add i64 %147, 16
  %149 = trunc i64 %148 to i32
  %150 = call i8* @cpu_to_le16(i32 %149)
  %151 = load %struct.cifs_acl*, %struct.cifs_acl** %6, align 8
  %152 = getelementptr inbounds %struct.cifs_acl, %struct.cifs_acl* %151, i32 0, i32 0
  store i8* %150, i8** %152, align 8
  ret i32 0
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

declare dso_local i64 @fill_ace_for_sid(%struct.cifs_ace*, %struct.cifs_sid*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
