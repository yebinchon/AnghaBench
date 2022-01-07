; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_challenge_switch_key.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_domain.c_tb_domain_challenge_switch_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { {}*, i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)* }
%struct.tb_switch = type { i32, i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }
%struct.crypto_shash = type { i32 }
%struct.shash_desc = type { %struct.crypto_shash* }

@TB_SWITCH_KEY_SIZE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"hmac(sha256)\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EKEYREJECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_domain_challenge_switch_key(%struct.tb* %0, %struct.tb_switch* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.tb*, align 8
  %5 = alloca %struct.tb_switch*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.tb_switch*, align 8
  %11 = alloca %struct.crypto_shash*, align 8
  %12 = alloca %struct.shash_desc*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.tb* %0, %struct.tb** %4, align 8
  store %struct.tb_switch* %1, %struct.tb_switch** %5, align 8
  %15 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %16 = zext i32 %15 to i64
  %17 = call i8* @llvm.stacksave()
  store i8* %17, i8** %6, align 8
  %18 = alloca i32, i64 %16, align 16
  store i64 %16, i64* %7, align 8
  %19 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %20 = zext i32 %19 to i64
  %21 = alloca i32, i64 %20, align 16
  store i64 %20, i64* %8, align 8
  %22 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %9, align 8
  %25 = load %struct.tb*, %struct.tb** %4, align 8
  %26 = getelementptr inbounds %struct.tb, %struct.tb* %25, i32 0, i32 0
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = bitcast {}** %28 to i32 (%struct.tb*, %struct.tb_switch*)**
  %30 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %29, align 8
  %31 = icmp ne i32 (%struct.tb*, %struct.tb_switch*)* %30, null
  br i1 %31, label %32, label %39

32:                                               ; preds = %2
  %33 = load %struct.tb*, %struct.tb** %4, align 8
  %34 = getelementptr inbounds %struct.tb, %struct.tb* %33, i32 0, i32 0
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 1
  %37 = load i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)*, i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)** %36, align 8
  %38 = icmp ne i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %32, %2
  %40 = load i32, i32* @EPERM, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %146

42:                                               ; preds = %32
  %43 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %44 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %43, i32 0, i32 2
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call %struct.tb_switch* @tb_to_switch(i32 %46)
  store %struct.tb_switch* %47, %struct.tb_switch** %10, align 8
  %48 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %49 = icmp ne %struct.tb_switch* %48, null
  br i1 %49, label %50, label %55

50:                                               ; preds = %42
  %51 = load %struct.tb_switch*, %struct.tb_switch** %10, align 8
  %52 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50, %42
  %56 = load i32, i32* @EINVAL, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %146

58:                                               ; preds = %50
  %59 = mul nuw i64 4, %16
  %60 = trunc i64 %59 to i32
  %61 = call i32 @get_random_bytes(i32* %18, i32 %60)
  %62 = load %struct.tb*, %struct.tb** %4, align 8
  %63 = getelementptr inbounds %struct.tb, %struct.tb* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %64, i32 0, i32 1
  %66 = load i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)*, i32 (%struct.tb*, %struct.tb_switch*, i32*, i32*)** %65, align 8
  %67 = load %struct.tb*, %struct.tb** %4, align 8
  %68 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %69 = call i32 %66(%struct.tb* %67, %struct.tb_switch* %68, i32* %18, i32* %21)
  store i32 %69, i32* %13, align 4
  %70 = load i32, i32* %13, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %58
  %73 = load i32, i32* %13, align 4
  store i32 %73, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %146

74:                                               ; preds = %58
  %75 = call %struct.crypto_shash* @crypto_alloc_shash(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 0, i32 0)
  store %struct.crypto_shash* %75, %struct.crypto_shash** %11, align 8
  %76 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %77 = call i64 @IS_ERR(%struct.crypto_shash* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %81 = call i32 @PTR_ERR(%struct.crypto_shash* %80)
  store i32 %81, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %146

82:                                               ; preds = %74
  %83 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %84 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %85 = getelementptr inbounds %struct.tb_switch, %struct.tb_switch* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @TB_SWITCH_KEY_SIZE, align 4
  %88 = call i32 @crypto_shash_setkey(%struct.crypto_shash* %83, i32 %86, i32 %87)
  store i32 %88, i32* %13, align 4
  %89 = load i32, i32* %13, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %92

91:                                               ; preds = %82
  br label %142

92:                                               ; preds = %82
  %93 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %94 = call i64 @crypto_shash_descsize(%struct.crypto_shash* %93)
  %95 = add i64 8, %94
  %96 = load i32, i32* @GFP_KERNEL, align 4
  %97 = call %struct.shash_desc* @kzalloc(i64 %95, i32 %96)
  store %struct.shash_desc* %97, %struct.shash_desc** %12, align 8
  %98 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %99 = icmp ne %struct.shash_desc* %98, null
  br i1 %99, label %103, label %100

100:                                              ; preds = %92
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %13, align 4
  br label %142

103:                                              ; preds = %92
  %104 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %105 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %106 = getelementptr inbounds %struct.shash_desc, %struct.shash_desc* %105, i32 0, i32 0
  store %struct.crypto_shash* %104, %struct.crypto_shash** %106, align 8
  %107 = mul nuw i64 4, %23
  %108 = trunc i64 %107 to i32
  %109 = call i32 @memset(i32* %24, i32 0, i32 %108)
  %110 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %111 = mul nuw i64 4, %23
  %112 = trunc i64 %111 to i32
  %113 = call i32 @crypto_shash_digest(%struct.shash_desc* %110, i32* %18, i32 %112, i32* %24)
  store i32 %113, i32* %13, align 4
  %114 = load i32, i32* %13, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %117

116:                                              ; preds = %103
  br label %139

117:                                              ; preds = %103
  %118 = mul nuw i64 4, %23
  %119 = trunc i64 %118 to i32
  %120 = call i64 @memcmp(i32* %21, i32* %24, i32 %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %125

122:                                              ; preds = %117
  %123 = load i32, i32* @EKEYREJECTED, align 4
  %124 = sub nsw i32 0, %123
  store i32 %124, i32* %13, align 4
  br label %139

125:                                              ; preds = %117
  %126 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %127 = call i32 @crypto_free_shash(%struct.crypto_shash* %126)
  %128 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %129 = call i32 @kfree(%struct.shash_desc* %128)
  %130 = load %struct.tb*, %struct.tb** %4, align 8
  %131 = getelementptr inbounds %struct.tb, %struct.tb* %130, i32 0, i32 0
  %132 = load %struct.TYPE_4__*, %struct.TYPE_4__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = bitcast {}** %133 to i32 (%struct.tb*, %struct.tb_switch*)**
  %135 = load i32 (%struct.tb*, %struct.tb_switch*)*, i32 (%struct.tb*, %struct.tb_switch*)** %134, align 8
  %136 = load %struct.tb*, %struct.tb** %4, align 8
  %137 = load %struct.tb_switch*, %struct.tb_switch** %5, align 8
  %138 = call i32 %135(%struct.tb* %136, %struct.tb_switch* %137)
  store i32 %138, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %146

139:                                              ; preds = %122, %116
  %140 = load %struct.shash_desc*, %struct.shash_desc** %12, align 8
  %141 = call i32 @kfree(%struct.shash_desc* %140)
  br label %142

142:                                              ; preds = %139, %100, %91
  %143 = load %struct.crypto_shash*, %struct.crypto_shash** %11, align 8
  %144 = call i32 @crypto_free_shash(%struct.crypto_shash* %143)
  %145 = load i32, i32* %13, align 4
  store i32 %145, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %146

146:                                              ; preds = %142, %125, %79, %72, %55, %39
  %147 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %147)
  %148 = load i32, i32* %3, align 4
  ret i32 %148
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.tb_switch* @tb_to_switch(i32) #2

declare dso_local i32 @get_random_bytes(i32*, i32) #2

declare dso_local %struct.crypto_shash* @crypto_alloc_shash(i8*, i32, i32) #2

declare dso_local i64 @IS_ERR(%struct.crypto_shash*) #2

declare dso_local i32 @PTR_ERR(%struct.crypto_shash*) #2

declare dso_local i32 @crypto_shash_setkey(%struct.crypto_shash*, i32, i32) #2

declare dso_local %struct.shash_desc* @kzalloc(i64, i32) #2

declare dso_local i64 @crypto_shash_descsize(%struct.crypto_shash*) #2

declare dso_local i32 @memset(i32*, i32, i32) #2

declare dso_local i32 @crypto_shash_digest(%struct.shash_desc*, i32*, i32, i32*) #2

declare dso_local i64 @memcmp(i32*, i32*, i32) #2

declare dso_local i32 @crypto_free_shash(%struct.crypto_shash*) #2

declare dso_local i32 @kfree(%struct.shash_desc*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
