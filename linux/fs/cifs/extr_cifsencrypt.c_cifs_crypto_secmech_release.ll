; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_cifs_crypto_secmech_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsencrypt.c_cifs_crypto_secmech_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TCP_Server_Info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32*, i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cifs_crypto_secmech_release(%struct.TCP_Server_Info* %0) #0 {
  %2 = alloca %struct.TCP_Server_Info*, align 8
  store %struct.TCP_Server_Info* %0, %struct.TCP_Server_Info** %2, align 8
  %3 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %4 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %3, i32 0, i32 0
  %5 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %4, i32 0, i32 11
  %6 = load i32*, i32** %5, align 8
  %7 = icmp ne i32* %6, null
  br i1 %7, label %8, label %17

8:                                                ; preds = %1
  %9 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %10 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 11
  %12 = load i32*, i32** %11, align 8
  %13 = call i32 @crypto_free_shash(i32* %12)
  %14 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %15 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 11
  store i32* null, i32** %16, align 8
  br label %17

17:                                               ; preds = %8, %1
  %18 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %19 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 10
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %32

23:                                               ; preds = %17
  %24 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %25 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 10
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @crypto_free_shash(i32* %27)
  %29 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %30 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 10
  store i32* null, i32** %31, align 8
  br label %32

32:                                               ; preds = %23, %17
  %33 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %34 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 9
  %36 = load i32*, i32** %35, align 8
  %37 = icmp ne i32* %36, null
  br i1 %37, label %38, label %47

38:                                               ; preds = %32
  %39 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %40 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 9
  %42 = load i32*, i32** %41, align 8
  %43 = call i32 @crypto_free_shash(i32* %42)
  %44 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %45 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 9
  store i32* null, i32** %46, align 8
  br label %47

47:                                               ; preds = %38, %32
  %48 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %49 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %49, i32 0, i32 8
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %62

53:                                               ; preds = %47
  %54 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %55 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i32 0, i32 8
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @crypto_free_shash(i32* %57)
  %59 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %60 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 8
  store i32* null, i32** %61, align 8
  br label %62

62:                                               ; preds = %53, %47
  %63 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %64 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %63, i32 0, i32 0
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 7
  %66 = load i32*, i32** %65, align 8
  %67 = icmp ne i32* %66, null
  br i1 %67, label %68, label %77

68:                                               ; preds = %62
  %69 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %70 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i32 0, i32 7
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @crypto_free_shash(i32* %72)
  %74 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %75 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 7
  store i32* null, i32** %76, align 8
  br label %77

77:                                               ; preds = %68, %62
  %78 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %79 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %78, i32 0, i32 0
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 6
  %81 = load i32*, i32** %80, align 8
  %82 = icmp ne i32* %81, null
  br i1 %82, label %83, label %92

83:                                               ; preds = %77
  %84 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %85 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 6
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @crypto_free_aead(i32* %87)
  %89 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %90 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 6
  store i32* null, i32** %91, align 8
  br label %92

92:                                               ; preds = %83, %77
  %93 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %94 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 5
  %96 = load i32*, i32** %95, align 8
  %97 = icmp ne i32* %96, null
  br i1 %97, label %98, label %107

98:                                               ; preds = %92
  %99 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %100 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %99, i32 0, i32 0
  %101 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %100, i32 0, i32 5
  %102 = load i32*, i32** %101, align 8
  %103 = call i32 @crypto_free_aead(i32* %102)
  %104 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %105 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %104, i32 0, i32 0
  %106 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %105, i32 0, i32 5
  store i32* null, i32** %106, align 8
  br label %107

107:                                              ; preds = %98, %92
  %108 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %109 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 4
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @kfree(i32* %111)
  %113 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %114 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 4
  store i32* null, i32** %115, align 8
  %116 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %117 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i32 @kfree(i32* %119)
  %121 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %122 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 3
  store i32* null, i32** %123, align 8
  %124 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %125 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %124, i32 0, i32 0
  %126 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i32 0, i32 2
  %127 = load i32*, i32** %126, align 8
  %128 = call i32 @kfree(i32* %127)
  %129 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %130 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %129, i32 0, i32 0
  %131 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %130, i32 0, i32 2
  store i32* null, i32** %131, align 8
  %132 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %133 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %132, i32 0, i32 0
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 1
  %135 = load i32*, i32** %134, align 8
  %136 = call i32 @kfree(i32* %135)
  %137 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %138 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  %140 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %141 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %140, i32 0, i32 0
  %142 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = call i32 @kfree(i32* %143)
  %145 = load %struct.TCP_Server_Info*, %struct.TCP_Server_Info** %2, align 8
  %146 = getelementptr inbounds %struct.TCP_Server_Info, %struct.TCP_Server_Info* %145, i32 0, i32 0
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %146, i32 0, i32 0
  store i32* null, i32** %147, align 8
  ret void
}

declare dso_local i32 @crypto_free_shash(i32*) #1

declare dso_local i32 @crypto_free_aead(i32*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
