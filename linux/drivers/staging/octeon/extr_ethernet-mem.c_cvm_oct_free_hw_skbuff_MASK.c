__attribute__((used)) static void FUNC0(int pool, int size, int elements)
{
	char *memory;

	do {
		memory = FUNC0(pool);
		if (memory) {
			struct sk_buff *skb =
			    *(struct sk_buff **)(memory - sizeof(void *));
			elements--;
			FUNC0(skb);
		}
	} while (memory);

	if (elements < 0)
		FUNC0("Freeing of pool %u had too many skbuffs (%d)\n",
			pool, elements);
	else if (elements > 0)
		FUNC0("Freeing of pool %u is missing %d skbuffs\n",
			pool, elements);
}